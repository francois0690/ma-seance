class UserMailer < ApplicationMailer
  default from: 'contact@ma-seance.com'
  def aubergine_email()
    @user = params[:user]
    mail(to: @user.email, subject: "t'as clické sur le bouton aubergine!")
  end
end
