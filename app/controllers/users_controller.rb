class UsersController < ApplicationController
  def dashboard
    @my_chatrooms = Chatroom.where("name ILIKE :name", name: "%#{current_user.id}-%")
    @my_channels  = @my_chatrooms.map do |c|
      doctor_id = c.name.match(/(\d+)-(\d+)/)[2].to_i
      User.find(doctor_id)
    end
    user = current_user
    @message = Message.new
    if params[:index].nil?
      @chatroom = @my_chatrooms.first
    else
      @chatroom = @my_chatrooms[:index]
    end
  end

  def show
    set_user
    @jobs = @user.jobs
    @activities = @user.activities
    @user = User.find(params[:id])
    @adresses = Office.first.address
    @markers = @user.offices.map do |office|
      {
        lng: office.longitude,
        lat: office.latitude
      }
    end
    @chatroom = Chatroom.new
    @message = Message.new
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def piece_params
    params.require(:user).permit(:id)
  end
  def message_params 
    params.require(:message).permit(:content)
  end
end
