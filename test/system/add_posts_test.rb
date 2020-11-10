require "application_system_test_case"

class AddPostsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit add_posts_url
  #
  #   assert_selector "h1", text: "AddPost"
  # end
  test "visiting posts" do
    visit '/posts'
    click_link "Add new post"
    fill_in 'Tytuł', with: 'Testowy tytuł'
    fill_in 'Author', with: 'Testowy autor'
    fill_in 'Content', with: 'Testowy content'
    click_button 'Confirm edit'

    assert_text 'Dziękujemy za wpis'
  end
end
