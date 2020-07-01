class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    redirect_to aubergine_path
  end
end
