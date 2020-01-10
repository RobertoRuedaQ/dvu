require "application_system_test_case"

class ExpensesTest < ApplicationSystemTestCase
  setup do
    @expense = expenses(:one)
  end

  test "visiting the index" do
    visit expenses_url
    assert_selector "h1", text: "Expenses"
  end

  test "creating a Expense" do
    visit expenses_url
    click_on "New Expense"

    fill_in "Activity", with: @expense.activity_id
    fill_in "Amount", with: @expense.amount
    fill_in "Bill number", with: @expense.bill_number
    fill_in "Budget", with: @expense.budget
    fill_in "Client type", with: @expense.client_type
    fill_in "Date", with: @expense.date
    fill_in "Description", with: @expense.description
    fill_in "Expense type", with: @expense.expense_type
    fill_in "Name", with: @expense.name
    fill_in "Siaf code", with: @expense.siaf_code
    click_on "Create Expense"

    assert_text "Expense was successfully created"
    click_on "Back"
  end

  test "updating a Expense" do
    visit expenses_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @expense.activity_id
    fill_in "Amount", with: @expense.amount
    fill_in "Bill number", with: @expense.bill_number
    fill_in "Budget", with: @expense.budget
    fill_in "Client type", with: @expense.client_type
    fill_in "Date", with: @expense.date
    fill_in "Description", with: @expense.description
    fill_in "Expense type", with: @expense.expense_type
    fill_in "Name", with: @expense.name
    fill_in "Siaf code", with: @expense.siaf_code
    click_on "Update Expense"

    assert_text "Expense was successfully updated"
    click_on "Back"
  end

  test "destroying a Expense" do
    visit expenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expense was successfully destroyed"
  end
end
