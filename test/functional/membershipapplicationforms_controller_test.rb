require 'test_helper'

class MembershipapplicationformsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:membershipapplicationforms)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_membershipapplicationform
    assert_difference('Membershipapplicationform.count') do
      post :create, :membershipapplicationform => { }
    end

    assert_redirected_to membershipapplicationform_path(assigns(:membershipapplicationform))
  end

  def test_should_show_membershipapplicationform
    get :show, :id => membershipapplicationforms(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => membershipapplicationforms(:one).id
    assert_response :success
  end

  def test_should_update_membershipapplicationform
    put :update, :id => membershipapplicationforms(:one).id, :membershipapplicationform => { }
    assert_redirected_to membershipapplicationform_path(assigns(:membershipapplicationform))
  end

  def test_should_destroy_membershipapplicationform
    assert_difference('Membershipapplicationform.count', -1) do
      delete :destroy, :id => membershipapplicationforms(:one).id
    end

    assert_redirected_to membershipapplicationforms_path
  end
end
