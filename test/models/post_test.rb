require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "titleize_author" do
    p1 = Post.create author: "john locke", body: "Welcome!", title: "Welcome!"
    assert_equal "John Locke", p1.author 
  end

end
