require 'test_helper'

class ParkingSlotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get parking_slots_index_url
    assert_response :success
  end

end
