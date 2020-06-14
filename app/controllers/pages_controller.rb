class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @doctors = User.where(is_pro: true)
  end

  def aubergine
  end
end
