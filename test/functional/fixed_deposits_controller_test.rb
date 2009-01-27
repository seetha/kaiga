require 'test_helper'

class FixedDepositsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:fixed_deposits)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_fixed_deposit
    assert_difference('FixedDeposit.count') do
      post :create, :fixed_deposit => { }
    end

    assert_redirected_to fixed_deposit_path(assigns(:fixed_deposit))
  end

  def test_should_show_fixed_deposit
    get :show, :id => fixed_deposits(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => fixed_deposits(:one).id
    assert_response :success
  end

  def test_should_update_fixed_deposit
    put :update, :id => fixed_deposits(:one).id, :fixed_deposit => { }
    assert_redirected_to fixed_deposit_path(assigns(:fixed_deposit))
  end

  def test_should_destroy_fixed_deposit
    assert_difference('FixedDeposit.count', -1) do
      delete :destroy, :id => fixed_deposits(:one).id
    end

    assert_redirected_to fixed_deposits_path
  end
end
