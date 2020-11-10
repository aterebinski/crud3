class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.new_post_notification.subject
  #
  def new_post_notification(post)

    @greeting = "Hi"
    @post = post
    mail to: "tryb77@wp.pl", subject: "New post!", from: "Jan Kowalski <tryb77@gmail.com>"
  end
end
