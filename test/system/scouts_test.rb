require "application_system_test_case"

class ScoutsTest < ApplicationSystemTestCase
  setup do
    @scout = scouts(:one)
  end

  test "visiting the index" do
    visit scouts_url
    assert_selector "h1", text: "Scouts"
  end

  test "creating a Scout" do
    visit scouts_url
    click_on "New Scout"

    fill_in "Body", with: @scout.body
    fill_in "Id", with: @scout.id
    fill_in "Name", with: @scout.name
    fill_in "Title", with: @scout.title
    fill_in "Update at", with: @scout.update_at
    click_on "Create Scout"

    assert_text "Scout was successfully created"
    click_on "Back"
  end

  test "updating a Scout" do
    visit scouts_url
    click_on "Edit", match: :first

    fill_in "Body", with: @scout.body
    fill_in "Id", with: @scout.id
    fill_in "Name", with: @scout.name
    fill_in "Title", with: @scout.title
    fill_in "Update at", with: @scout.update_at
    click_on "Update Scout"

    assert_text "Scout was successfully updated"
    click_on "Back"
  end

  test "destroying a Scout" do
    visit scouts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scout was successfully destroyed"
  end
end
