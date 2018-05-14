require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_url
    assert_response :success
  end

  test "should get all" do
    get all_url
    assert_response :success
  end

  test "should show Sign in" do
   get root_path
   assert_response :success
   assert_select "li","Sign up"
 end




end
