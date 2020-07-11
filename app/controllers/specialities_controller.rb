class SpecialitiesController < ApplicationController
  def show
    @speciality = Speciality.find(params[:id])
    if params[:localise].present?
      @result = Office.where("address ILIKE ?", "%#{params[:localise]}%")
      @doctors = User.all.joins(:activities).where(activities: {office_id: @result}).order(:last_name).page params[:page]
    else
      @doctors = User.joins(:specialities).where(specialities: { name: @speciality.name} ).order(:last_name).page params[:page]
    end
      @markers = []
      @doctors.each do |doctor|
        activities = Activity.where(user: doctor).uniq
        activities.each do |activity|
          next if activity.office.latitude.nil?
          @markers << {
            lat: activity.office.latitude,
            lng: activity.office.longitude,
            infoWindow: render_to_string(partial: "pages/info_window", locals: { doctor: doctor, office: activity.office} )
          }
        end
      end
    end
  end
  