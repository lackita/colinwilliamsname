require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get resume" do
    get :resume
    assert_response :success
  end

  test "should get trek2013" do
    get :trek2013
    assert_response :success
  end

end
