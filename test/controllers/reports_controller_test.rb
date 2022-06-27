require "test_helper"

class ReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = employees(:employee_one)
  end

  test "should get index Reports" do
    sign_in @admin
    get reports_url

    
    assert_response :success
    # assert_redirected_to reports_path
  end

end