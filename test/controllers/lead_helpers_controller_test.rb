require 'test_helper'

class LeadHelpersControllerTest < ActionController::TestCase
  setup do
    @lead_helper = lead_helpers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lead_helpers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lead_helper" do
    assert_difference('LeadHelper.count') do
      post :create, lead_helper: { company: @lead_helper.company, email,: @lead_helper.email,, first_name: @lead_helper.first_name, last_name: @lead_helper.last_name, phone: @lead_helper.phone, title: @lead_helper.title }
    end

    assert_redirected_to lead_helper_path(assigns(:lead_helper))
  end

  test "should show lead_helper" do
    get :show, id: @lead_helper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lead_helper
    assert_response :success
  end

  test "should update lead_helper" do
    patch :update, id: @lead_helper, lead_helper: { company: @lead_helper.company, email,: @lead_helper.email,, first_name: @lead_helper.first_name, last_name: @lead_helper.last_name, phone: @lead_helper.phone, title: @lead_helper.title }
    assert_redirected_to lead_helper_path(assigns(:lead_helper))
  end

  test "should destroy lead_helper" do
    assert_difference('LeadHelper.count', -1) do
      delete :destroy, id: @lead_helper
    end

    assert_redirected_to lead_helpers_path
  end
end
