require 'test_helper'

class MemberSettingsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:member_settings)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_member_setting
    assert_difference('MemberSetting.count') do
      post :create, :member_setting => { }
    end

    assert_redirected_to member_setting_path(assigns(:member_setting))
  end

  def test_should_show_member_setting
    get :show, :id => member_settings(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => member_settings(:one).id
    assert_response :success
  end

  def test_should_update_member_setting
    put :update, :id => member_settings(:one).id, :member_setting => { }
    assert_redirected_to member_setting_path(assigns(:member_setting))
  end

  def test_should_destroy_member_setting
    assert_difference('MemberSetting.count', -1) do
      delete :destroy, :id => member_settings(:one).id
    end

    assert_redirected_to member_settings_path
  end
end
