require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = employees(:employee_one)
  end

  test "should get index admin" do
    sign_in @admin
    get admin_index_path

    assert_response :success
  end

end