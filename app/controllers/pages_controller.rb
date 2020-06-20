class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @doctors= User.order(:last_name).page params[:page]

    @markers = []
    @doctors.each do |doctor|
      activities = Activity.where(user: doctor).uniq
      activities.each do |activity|
        next if activity.office.latitude.nil?
        @markers << {
          lat: activity.office.latitude,
          lng: activity.office.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { doctor: doctor, office: activity.office} )
        }
      end
    end
  end

  def aubergine
  end

end
