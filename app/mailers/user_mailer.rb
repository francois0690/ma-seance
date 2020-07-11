class UserMailer < ApplicationMailer
  # default from: 'maseancetherapeutique@gmail.com'
  def aubergine_email()
    @user = params[:user]
    @room = params[:room]
    @token = Devise.friendly_token.first(16)
    @user.auth_token = @token
    mail(to: @user.email, subject: "Nouveau contact, Ma-séance")
  end


  def self.generate(email)
    user = User.find_by(email: email)
    return nil if !user

    create(user: user, expires_at: Date.today + 1.day, token: generate_token)
  end

end
