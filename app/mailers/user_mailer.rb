class UserMailer < ApplicationMailer
  # default from: 'maseancetherapeutique@gmail.com'
  def aubergine_email()
    @user = params[:user]
    @room = params[:room]
    mail(to: @user.email, subject: "Nouveau contact, Ma-séance")
  end

end
