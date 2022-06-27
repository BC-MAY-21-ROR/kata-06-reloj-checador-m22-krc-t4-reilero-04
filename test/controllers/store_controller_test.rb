require 'test_helper'

class StoresControllerTest < ActionDispatch::IntegrationTest

  setup do
    @admin = employees(:employee_one)
    @not_admin = employees(:employee_two)
  end

  test 'should get index' do
    sign_in @admin
    get stores_path

    assert_response :success
  end

  test "should get new" do
    sign_in @admin
    get new_store_url

    assert_response :success
  end

  test "should create store" do
    sign_in @admin
    get new_store_path

    assert_response :success
  end

  test 'allows to update store' do
    sign_in @admin

    patch store_path(stores(:store_one)), 
      params: { 
        store: {
          name: 'Tesla',
          address: 'Berlin',
        }
      }

    assert_redirected_to stores_path
    assert_equal flash[:notice], 'Store edited ok'
  end


end