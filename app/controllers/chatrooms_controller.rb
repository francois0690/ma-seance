class ChatroomsController < ApplicationController
  before_action :load_entities
  def show
  end
  
  def index
  end

  private


  def load_entities
    @message = Message.new
    @chatrooms = Chatroom.where("name ILIKE  any ( array[?] )", ["%#{current_user.id}-%", "%-#{current_user.id}%"])
    @channels  = @chatrooms.map do |c|
      doctor_id = c.name.match(/(\d+)-(\d+)/)[2].to_i
      doctor_id = c.name.match(/(\d+)-(\d+)/)[0].to_i if doctor_id == current_user.id
      {user: User.find(doctor_id), room: c.id }
    end
    @chatroom = @chatrooms.find(params[:id]) unless params[:id].nil?
    @chatroom = @chatrooms.first if @chatroom.nil?
  end

  def message_params 
    params.require(:message).permit(:content)
  end

  def permitted_parameters
    params.require(:room).permit(:name)
  end
end
