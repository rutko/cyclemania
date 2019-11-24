require "application_system_test_case"

class UserPostsTest < ApplicationSystemTestCase
  setup do
    @user_post = user_posts(:one)
  end

  test "visiting the index" do
    visit user_posts_url
    assert_selector "h1", text: "User Posts"
  end

  test "creating a User post" do
    visit user_posts_url
    click_on "New User Post"

    fill_in "Body", with: @user_post.body
    fill_in "Id", with: @user_post.id
    fill_in "Name", with: @user_post.name
    fill_in "Title", with: @user_post.title
    fill_in "Update at", with: @user_post.update_at
    click_on "Create User post"

    assert_text "User post was successfully created"
    click_on "Back"
  end

  test "updating a User post" do
    visit user_posts_url
    click_on "Edit", match: :first

    fill_in "Body", with: @user_post.body
    fill_in "Id", with: @user_post.id
    fill_in "Name", with: @user_post.name
    fill_in "Title", with: @user_post.title
    fill_in "Update at", with: @user_post.update_at
    click_on "Update User post"

    assert_text "User post was successfully updated"
    click_on "Back"
  end

  test "destroying a User post" do
    visit user_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User post was successfully destroyed"
  end
end
