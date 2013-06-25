require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

end
