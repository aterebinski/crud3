# Preview all emails at http://localhost:3000/rails/mailers/post_mailer
class PostMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/post_mailer/new_post_notification
  def new_post_notification
    PostMailer.new_post_notification(Post.new({author: "Jan Kowalski", title: "Tam i z powrotem", body: "Lorem ipsum. .."}))
  end

end
