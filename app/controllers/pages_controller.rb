require "json"
require "rest-client"

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home , :doctor_message_box]
  before_action :authenticate_by_token, only: [ :doctor_message_box ]

  def home
    if params[:localise].present?
      @result = Office.search params[:localise]
      adresses = @result.map{ |adresse| adresse }

      @doctors = User.where(adresses: adresses).page params[:page]
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



  def aubergine
  end

  def doctor_message_box
  end

  def typeform
  end

  def results
    sleep(2)
    # wait_for_api
    specialities = []
    result = ["SOPHROLOGIE", "EMDR"]
    result.each do |spec|
      query = Speciality.find_by name: spec
      specialities << query
    end
    @specialities = specialities
  end

  def aubergine_email
    @user = current_user
    UserMailer.with(user: @user).aubergine_email.deliver_now
   render 'aubergine'
  end

  private

  def authenticate_by_token
    @user = User.find_by(auth_token: params[:token])
  end

  specialities = {
    # TODO : creer le hash "thérapie A" => 0
  }

  def wait_for_api
    @response_id = params[:response_id]
    nb_of_responses = 0
    while nb_of_responses < 1
      data = request_api
      nb_of_responses = data['total_items']
      sleep(2)
    end
      response = data['items'].find { |item| item['response_id'] == @response_id }
      array = collect_answer(response['answers'])

      specialities = []
      result = ["SOPHROLOGIE", "EMDR"]
      result.each do |spec|
        query = Speciality.find_by name: spec
        specialities << query
      end
      @specialities = specialities
      # TODO : pour chaque question incrémenter le score d'un point
      # pénaliser de - 1000 point pour une contraindication
      # sortire les 3 spécialités avec le meilleur score.
  end

  def search_params
    params.require(:home).permit(:job, :specialiste, :response_id)
  end

  def request_api
    url = "https://api.typeform.com/forms/unOwWLBS/responses?included_response_ids=#{params[:response_id]}"
    response = RestClient.get(url, {:Authorization => "Bearer #{ENV["TYPEFORM_API_KEY"]}" })
    data = JSON.parse(response.body)
    return data
  end

  def collect_answer(answers_array)
    answers_value = []

    answers_array.each do |answer|
      field = answer['field']
      case field['ref']
        when 'question_1'
          answers_value << answer['number']
        when 'question_2'
          answers_value << answer['choice']['label']
        when 'question_3'
          answers_value << answer['choices']['labels']
        when 'question_4'
          answers_value << answer['choices']['labels']
        when 'question_5'
          answers_value << answer['number']
        when 'question_6'
          answers_value << answer['choices']['labels']
        when 'question_7'
          answers_value << answer['number']
        when 'question_8'
          answers_value << answer['choices']['labels']
      end
    end
    return answers_value
  end
end
