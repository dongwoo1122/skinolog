require 'test_helper'

class RoutinepostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get routineposts_index_url
    assert_response :success
  end

end
