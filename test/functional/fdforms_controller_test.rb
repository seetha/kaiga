require 'test_helper'

class FdformsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:fdforms)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_fdform
    assert_difference('Fdform.count') do
      post :create, :fdform => { }
    end

    assert_redirected_to fdform_path(assigns(:fdform))
  end

  def test_should_show_fdform
    get :show, :id => fdforms(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => fdforms(:one).id
    assert_response :success
  end

  def test_should_update_fdform
    put :update, :id => fdforms(:one).id, :fdform => { }
    assert_redirected_to fdform_path(assigns(:fdform))
  end

  def test_should_destroy_fdform
    assert_difference('Fdform.count', -1) do
      delete :destroy, :id => fdforms(:one).id
    end

    assert_redirected_to fdforms_path
  end
end
