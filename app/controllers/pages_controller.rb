class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    #if params[:localise].present?
    if params[:job].present?
      @result = Job.search params[:job][:job_name]
      jobs = @result.map{ |job| job }
      @doctors = User.where(jobs: jobs).page params[:page]
    else
      @doctors= User.order(:last_name).page params[:page]
    end
    @specialities = Speciality.all
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

  def reindex_job
    Job.reindex
  end

  def aubergine
  end

  def typeform
  end

  def results
    # curl --request GET \
    #   --url https://api.typeform.com/forms/unOwWLBS/responses \
    #   --header 'Authorization: Bearer 2P3cncZbtsUhLqrEai7KD6QZAKTw95xsJ7fraDR12XLU'
  end

  private
  def search_params
    params.require(:home).permit(:job, :specialiste)
  end
end
