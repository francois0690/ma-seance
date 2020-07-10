class UsersController < ApplicationController
  def dashboard
  end

  def show
    set_user
    @specialities = @user.specialities
    @activities = @user.activities
    # @offices = activities.offices
    # @specialities = activities.specialities
    # @consultation = activities.onsultation


    @markers = @user.offices.map do |office|
      {
        lng: office.longitude,
        lat: office.latitude
      }
    end
    @message = Message.new
  end

  def channel
    @my_chatrooms = Chatroom.where("name ILIKE :name", name: "%#{current_user.id}-%")
    @my_channels  = @my_chatrooms.map do |c|
      doctor_id = c.name.match(/(\d+)-(\d+)/)[2].to_i
      User.find(doctor_id)
    end
    @message = Message.new
    if params[:index].nil?
      @chatroom = @my_chatrooms.first
    else
      @chatroom = @my_chatrooms[params[:index].to_i]
    end
    render "users/dashboard"
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
