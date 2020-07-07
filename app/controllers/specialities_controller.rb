class SpecialitiesController < ApplicationController
    def show
        @speciality = Speciality.find(params[:id])
        @doctors = User.joins(:specialities).where(specialities: { name: @speciality.name} )
        # @activities = Activity.where(speciality: @speciality)
        # @doctors = User.where(activities: @activities).order(:last_name).page params[:page]

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
