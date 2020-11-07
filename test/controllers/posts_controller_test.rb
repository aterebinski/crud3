require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get posts_path
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get show" do
    id = Post.last.id
    get post_path(id)
    assert_response :success
  end

  test "should get new" do
    get new_post_path
    assert_response :success
  end

  test "should get edit" do
    id=Post.first.id
    get edit_post_path(id)
    assert_response :success
  end

  test "should post create" do
    # posts_before = Post.count
    # post "/posts", params: {post: {title: "Title", author: "Author", body: "Welcome!"}}
    # posts_after = Post.count
    # assert_equal 1, posts_after - posts_before
    assert_difference('Post.count') do #skrocona wersja powyzszego
      post posts_path, params: {post: {title: "Title", author: "Author", body: "Welcome!"}}
    end
    assert_redirected_to posts_path
  end

end
