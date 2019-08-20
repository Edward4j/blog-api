require "application_system_test_case"

class PublishingHousesTest < ApplicationSystemTestCase
  setup do
    @publishing_house = publishing_houses(:one)
  end

  test "visiting the index" do
    visit publishing_houses_url
    assert_selector "h1", text: "Publishing Houses"
  end

  test "creating a Publishing house" do
    visit publishing_houses_url
    click_on "New Publishing House"

    fill_in "Discount", with: @publishing_house.discount
    fill_in "Name", with: @publishing_house.name
    click_on "Create Publishing house"

    assert_text "Publishing house was successfully created"
    click_on "Back"
  end

  test "updating a Publishing house" do
    visit publishing_houses_url
    click_on "Edit", match: :first

    fill_in "Discount", with: @publishing_house.discount
    fill_in "Name", with: @publishing_house.name
    click_on "Update Publishing house"

    assert_text "Publishing house was successfully updated"
    click_on "Back"
  end

  test "destroying a Publishing house" do
    visit publishing_houses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Publishing house was successfully destroyed"
  end
end
