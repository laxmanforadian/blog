require "application_system_test_case"

class TtdsTest < ApplicationSystemTestCase
  setup do
    @ttd = ttds(:one)
  end

  test "visiting the index" do
    visit ttds_url
    assert_selector "h1", text: "Ttds"
  end

  test "creating a Ttd" do
    visit ttds_url
    click_on "New Ttd"

    fill_in "Age", with: @ttd.age
    fill_in "Email", with: @ttd.email
    fill_in "Name", with: @ttd.name
    fill_in "Place", with: @ttd.place
    fill_in "Time", with: @ttd.time
    click_on "Create Ttd"

    assert_text "Ttd was successfully created"
    click_on "Back"
  end

  test "updating a Ttd" do
    visit ttds_url
    click_on "Edit", match: :first

    fill_in "Age", with: @ttd.age
    fill_in "Email", with: @ttd.email
    fill_in "Name", with: @ttd.name
    fill_in "Place", with: @ttd.place
    fill_in "Time", with: @ttd.time
    click_on "Update Ttd"

    assert_text "Ttd was successfully updated"
    click_on "Back"
  end

  test "destroying a Ttd" do
    visit ttds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ttd was successfully destroyed"
  end
end
