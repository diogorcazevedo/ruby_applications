require 'test_helper'

class OlaControllerTest < ActionController::TestCase
  test "should get mundo" do
    get :mundo
    assert_response :success
  end

end
