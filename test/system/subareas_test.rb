require "application_system_test_case"

class SubareasTest < ApplicationSystemTestCase
  setup do
    @subarea = subareas(:one)
  end

  test "visiting the index" do
    visit subareas_url
    assert_selector "h1", text: "Subareas"
  end

  test "creating a Subarea" do
    visit subareas_url
    click_on "New Subarea"

    fill_in "Area", with: @subarea.area
    fill_in "Subarea code", with: @subarea.subarea_code
    fill_in "Subarea name", with: @subarea.subarea_name
    click_on "Create Subarea"

    assert_text "Subarea was successfully created"
    click_on "Back"
  end

  test "updating a Subarea" do
    visit subareas_url
    click_on "Edit", match: :first

    fill_in "Area", with: @subarea.area
    fill_in "Subarea code", with: @subarea.subarea_code
    fill_in "Subarea name", with: @subarea.subarea_name
    click_on "Update Subarea"

    assert_text "Subarea was successfully updated"
    click_on "Back"
  end

  test "destroying a Subarea" do
    visit subareas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subarea was successfully destroyed"
  end
end
