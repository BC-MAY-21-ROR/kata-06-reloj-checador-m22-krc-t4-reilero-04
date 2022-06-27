require "test_helper"

class AttendancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = employees(:employee_one)
    @not_admin = employees(:employee_two)
  end

  test "should get index admin" do
    get attendances_path(!@admin)

    assert_response :success
  end

end