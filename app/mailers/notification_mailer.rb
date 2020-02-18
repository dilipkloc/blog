class NotificationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.welcome_email.subject
  #
  def welcome_email
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.article_create.subject
  #
  def article_create(email)
    @greeting = "Hi"
    @email = email
    mail to: "#{@email}"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.push_notification.subject
  #
  def push_notification
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  def my_notification
    
  end

end

