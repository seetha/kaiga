require 'test_helper'

class SubscriptionSettingsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:subscription_settings)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_subscription_setting
    assert_difference('SubscriptionSetting.count') do
      post :create, :subscription_setting => { }
    end

    assert_redirected_to subscription_setting_path(assigns(:subscription_setting))
  end

  def test_should_show_subscription_setting
    get :show, :id => subscription_settings(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => subscription_settings(:one).id
    assert_response :success
  end

  def test_should_update_subscription_setting
    put :update, :id => subscription_settings(:one).id, :subscription_setting => { }
    assert_redirected_to subscription_setting_path(assigns(:subscription_setting))
  end

  def test_should_destroy_subscription_setting
    assert_difference('SubscriptionSetting.count', -1) do
      delete :destroy, :id => subscription_settings(:one).id
    end

    assert_redirected_to subscription_settings_path
  end
end
