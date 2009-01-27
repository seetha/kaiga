require 'test_helper'

class MemberapplicationsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:memberapplications)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_memberapplication
    assert_difference('Memberapplication.count') do
      post :create, :memberapplication => { }
    end

    assert_redirected_to memberapplication_path(assigns(:memberapplication))
  end

  def test_should_show_memberapplication
    get :show, :id => memberapplications(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => memberapplications(:one).id
    assert_response :success
  end

  def test_should_update_memberapplication
    put :update, :id => memberapplications(:one).id, :memberapplication => { }
    assert_redirected_to memberapplication_path(assigns(:memberapplication))
  end

  def test_should_destroy_memberapplication
    assert_difference('Memberapplication.count', -1) do
      delete :destroy, :id => memberapplications(:one).id
    end

    assert_redirected_to memberapplications_path
  end
end
