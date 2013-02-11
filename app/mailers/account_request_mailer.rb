class AccountRequestMailer < ActionMailer::Base
  default from: "no-reply@adfero.se"

  def welcome_email(request)
    @request = request
    @url  = "http://www.adfero.se/"
    mail(:to => request.email, :subject => "Welcome to adfero")
  end
end
