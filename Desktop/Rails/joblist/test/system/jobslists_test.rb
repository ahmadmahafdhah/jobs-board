require "application_system_test_case"

class JobslistsTest < ApplicationSystemTestCase
  setup do
    @jobslist = jobslists(:one)
  end

  test "visiting the index" do
    visit jobslists_url
    assert_selector "h1", text: "Jobslists"
  end

  test "should create jobslist" do
    visit jobslists_url
    click_on "New jobslist"

    fill_in "Description", with: @jobslist.description
    fill_in "Title", with: @jobslist.title
    click_on "Create Jobslist"

    assert_text "Jobslist was successfully created"
    click_on "Back"
  end

  test "should update Jobslist" do
    visit jobslist_url(@jobslist)
    click_on "Edit this jobslist", match: :first

    fill_in "Description", with: @jobslist.description
    fill_in "Title", with: @jobslist.title
    click_on "Update Jobslist"

    assert_text "Jobslist was successfully updated"
    click_on "Back"
  end

  test "should destroy Jobslist" do
    visit jobslist_url(@jobslist)
    click_on "Destroy this jobslist", match: :first

    assert_text "Jobslist was successfully destroyed"
  end
end
