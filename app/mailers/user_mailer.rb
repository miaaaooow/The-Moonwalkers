class UserMailer < ActionMailer::Base
  default from: "admin@themoonwalkers.bg"

  def welcome_email(user)
    @user = user
    @url = "http://themoonwalkers.bg"

    mail (:to => user.email, 
          :subject => "Welcome to The Moonwalkers! :)"
  end
end
