
class UserMailer < ActionMailer::Base
  default :from => "notification@example.com"

  def welcome_email(user)
    @user = user
    @url  = "http://0.0.0.0:3000"
    mail(:to=>user,:subject => "Welcome to My Awesome Site")
  end

end
