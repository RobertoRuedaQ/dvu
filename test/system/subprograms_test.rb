require "application_system_test_case"

class SubprogramsTest < ApplicationSystemTestCase
  setup do
    @subprogram = subprograms(:one)
  end

  test "visiting the index" do
    visit subprograms_url
    assert_selector "h1", text: "Subprograms"
  end

  test "creating a Subprogram" do
    visit subprograms_url
    click_on "New Subprogram"

    fill_in "Program", with: @subprogram.program
    fill_in "Subprogram code", with: @subprogram.subprogram_code
    fill_in "Subprogram name", with: @subprogram.subprogram_name
    click_on "Create Subprogram"

    assert_text "Subprogram was successfully created"
    click_on "Back"
  end

  test "updating a Subprogram" do
    visit subprograms_url
    click_on "Edit", match: :first

    fill_in "Program", with: @subprogram.program
    fill_in "Subprogram code", with: @subprogram.subprogram_code
    fill_in "Subprogram name", with: @subprogram.subprogram_name
    click_on "Update Subprogram"

    assert_text "Subprogram was successfully updated"
    click_on "Back"
  end

  test "destroying a Subprogram" do
    visit subprograms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subprogram was successfully destroyed"
  end
end
