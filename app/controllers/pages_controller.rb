class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @doctors= User.order(:last_name).page params[:page]
  end

  def aubergine
  end
end
