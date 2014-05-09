class ModelMailer < ActionMailer::Base
  default from: "iliu3@wisc.edu"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_record_notification.subject
  #
  def new_record_notification(username)
    @username = username
    mail to: "sevenex@gmail.com", subject: "Welcome to Assignment Tracker"
  end
end
