require 'test_helper'

class EtcControllerTest < ActionController::TestCase
  test "should get rank" do
    get :rank
    assert_response :success
  end

end
