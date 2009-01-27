require 'test_helper'

class Admin::AppointmentSlotsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_appointment_slots)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_appointment_slot
    assert_difference('Admin::AppointmentSlot.count') do
      post :create, :appointment_slot => { }
    end

    assert_redirected_to appointment_slot_path(assigns(:appointment_slot))
  end

  def test_should_show_appointment_slot
    get :show, :id => admin_appointment_slots(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => admin_appointment_slots(:one).id
    assert_response :success
  end

  def test_should_update_appointment_slot
    put :update, :id => admin_appointment_slots(:one).id, :appointment_slot => { }
    assert_redirected_to appointment_slot_path(assigns(:appointment_slot))
  end

  def test_should_destroy_appointment_slot
    assert_difference('Admin::AppointmentSlot.count', -1) do
      delete :destroy, :id => admin_appointment_slots(:one).id
    end

    assert_redirected_to admin_appointment_slots_path
  end
end
