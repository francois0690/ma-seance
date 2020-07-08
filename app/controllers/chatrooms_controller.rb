class ChatroomsController < ApplicationController
  before_action :load_entities
  def show
  end
  
  def index
  end

  private


  def load_entities
    @message = Message.new
    @chatrooms = Chatroom.where("name ILIKE :name", name: "%#{current_user.id}-%")
    @channels  = @chatrooms.map do |c|
      doctor_id = c.name.match(/(\d+)-(\d+)/)[2].to_i
      {user: User.find(doctor_id), room: c.id }
    end
    @chatroom = @chatrooms.find(params[:id]) if params[:id]
    @chatroom = @chatrooms.first if @chatroom.nil?
  end

  def message_params 
    params.require(:message).permit(:content)
  end

  def permitted_parameters
    params.require(:room).permit(:name)
  end
end
