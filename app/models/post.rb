class Post < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :body, presence: true


  before_create :titleize_author

  private

  def titleize_author
    self.author = self.author.to_s.titleize
  end
end
