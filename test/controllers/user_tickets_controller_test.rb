require 'test_helper'

class UserTicketsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_tickets_create_url
    assert_response :success
  end

  test "should get destroy" do
    get user_tickets_destroy_url
    assert_response :success
  end

  test "should get update" do
    get user_tickets_update_url
    assert_response :success
  end

  test "should get show" do
    get user_tickets_show_url
    assert_response :success
  end

end
