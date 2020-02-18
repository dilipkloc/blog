# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
class NotificationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/welcome_email
  def welcome_email
    NotificationMailer.welcome_email
  end

  # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/article_create
  def article_create
    NotificationMailer.article_create
  end

  # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/push_notification
  def push_notification
    NotificationMailer.push_notification
  end

end
