class Post < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :body, presence: true


  before_create :titleize_author

  after_create :send_notification_to_admin

  private

  def titleize_author
    self.author = self.author.to_s.titleize
  end

  def send_notification_to_admin
    PostMailer.new_post_notification(self).deliver
  end
end
