class MessagesController < ApplicationController

  def create
    @chatroom = get_chatroom
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: { message: @message })
      )
    else
      render "chatrooms/show"
    end
  end

  def message
    @chatroom.name = "#{current_user.id} - #{set_user}"
    raise
    @chatroom.save
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      redirect_to chatroom_path(@chatroom, anchor: "message-#{@message.id}")
    else
      render "chatrooms/show"
    end
  end

  private

  def message_params 
    params.require(:message).permit(:content)
  end

  def get_chatroom
    # show de la chatroom
    return Chatroom.find(params[:chatroom_id]) unless params[:chatroom_id].nil?

    # page doctor, pas le premier message
    doctor_id = params[:user_id]
    name = "#{current_user.id}-#{doctor_id}"
    chatroom = Chatroom.find_by(name: name)
    
    # page doctor,premier message
    chatroom = Chatroom.new( {name: name}) if chatroom.nil?
    chatroom.save
    doctor = User.find(doctor_id)
    UserMailer.with(user: doctor, room: name).aubergine_email.deliver_now
    return chatroom
  end
end
