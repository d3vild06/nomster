class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com"

  def comment_added
    mail(to: "sgtquezada@gmail.com",
         subject: "A new comment has been added for your place!")
  end
end
