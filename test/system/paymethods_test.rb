require "application_system_test_case"

class PaymethodsTest < ApplicationSystemTestCase
  setup do
    @paymethod = paymethods(:one)
  end

  test "visiting the index" do
    visit paymethods_url
    assert_selector "h1", text: "Paymethods"
  end

  test "should create paymethod" do
    visit paymethods_url
    click_on "New paymethod"

    click_on "Create Paymethod"

    assert_text "Paymethod was successfully created"
    click_on "Back"
  end

  test "should update Paymethod" do
    visit paymethod_url(@paymethod)
    click_on "Edit this paymethod", match: :first

    click_on "Update Paymethod"

    assert_text "Paymethod was successfully updated"
    click_on "Back"
  end

  test "should destroy Paymethod" do
    visit paymethod_url(@paymethod)
    click_on "Destroy this paymethod", match: :first

    assert_text "Paymethod was successfully destroyed"
  end
end
