require 'test_helper'

class ApiConfigsControllerTest < ActionController::TestCase
  setup do
    @api_config = api_configs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_configs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_config" do
    assert_difference('ApiConfig.count') do
      post :create, api_config: { client_id: @api_config.client_id, client_secret: @api_config.client_secret, password: @api_config.password, security_token: @api_config.security_token, username: @api_config.username }
    end

    assert_redirected_to api_config_path(assigns(:api_config))
  end

  test "should show api_config" do
    get :show, id: @api_config
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_config
    assert_response :success
  end

  test "should update api_config" do
    patch :update, id: @api_config, api_config: { client_id: @api_config.client_id, client_secret: @api_config.client_secret, password: @api_config.password, security_token: @api_config.security_token, username: @api_config.username }
    assert_redirected_to api_config_path(assigns(:api_config))
  end

  test "should destroy api_config" do
    assert_difference('ApiConfig.count', -1) do
      delete :destroy, id: @api_config
    end

    assert_redirected_to api_configs_path
  end
end
