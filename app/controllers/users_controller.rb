class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  def dashboard
    @chatroom = Chatroom.first
    @message = Message.new
  end

  def show
    set_user
    @jobs = @user.jobs
    @activities = @user.activities
    # @offices = activities.offices
    # @specialities = activities.specialities
    # @consultation = activities.onsultation
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def piece_params
    params.require(:user).permit(:id)
  end
end
