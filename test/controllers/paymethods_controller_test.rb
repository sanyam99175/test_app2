require "test_helper"

class PaymethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paymethod = paymethods(:one)
  end

  test "should get index" do
    get paymethods_url
    assert_response :success
  end

  test "should get new" do
    get new_paymethod_url
    assert_response :success
  end

  test "should create paymethod" do
    assert_difference("Paymethod.count") do
      post paymethods_url, params: { paymethod: {  } }
    end

    assert_redirected_to paymethod_url(Paymethod.last)
  end

  test "should show paymethod" do
    get paymethod_url(@paymethod)
    assert_response :success
  end

  test "should get edit" do
    get edit_paymethod_url(@paymethod)
    assert_response :success
  end

  test "should update paymethod" do
    patch paymethod_url(@paymethod), params: { paymethod: {  } }
    assert_redirected_to paymethod_url(@paymethod)
  end

  test "should destroy paymethod" do
    assert_difference("Paymethod.count", -1) do
      delete paymethod_url(@paymethod)
    end

    assert_redirected_to paymethods_url
  end
end
