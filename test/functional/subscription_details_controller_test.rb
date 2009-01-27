require 'test_helper'

class SubscriptionDetailsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:subscription_details)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_subscription_detail
    assert_difference('SubscriptionDetail.count') do
      post :create, :subscription_detail => { }
    end

    assert_redirected_to subscription_detail_path(assigns(:subscription_detail))
  end

  def test_should_show_subscription_detail
    get :show, :id => subscription_details(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => subscription_details(:one).id
    assert_response :success
  end

  def test_should_update_subscription_detail
    put :update, :id => subscription_details(:one).id, :subscription_detail => { }
    assert_redirected_to subscription_detail_path(assigns(:subscription_detail))
  end

  def test_should_destroy_subscription_detail
    assert_difference('SubscriptionDetail.count', -1) do
      delete :destroy, :id => subscription_details(:one).id
    end

    assert_redirected_to subscription_details_path
  end
end
