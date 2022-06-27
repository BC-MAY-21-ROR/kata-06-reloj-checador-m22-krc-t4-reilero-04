require "test_helper"

class AttendancesByDayControllerTest < ActionDispatch::IntegrationTest

  setup do
    @admin = employees(:employee_one)
    @not_admin = employees(:employee_two)
  end

  test "should get index admin" do
    get attendances_path(!@admin)

    assert_response :success
  end
  
  # test 'should home check In' do
  #   sign_in !@admin

  #   patch attendances_path(employees(:employee_one)), params: {
  #     employee: { 
  #       private_number: 1
  #     } 
  #   }

  #   assert_redirected_to employee_path
  #   assert_equal flash[:notice], 'Succesfully check'
  # end

end
