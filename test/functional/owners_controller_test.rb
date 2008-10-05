require File.dirname(__FILE__) + '/../test_helper'

class OwnersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:owners)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_owner
    assert_difference('Owner.count') do
      post :create, :owner => { }
    end

    assert_redirected_to owner_path(assigns(:owner))
  end

  def test_should_show_owner
    get :show, :id => owners(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => owners(:one).id
    assert_response :success
  end

  def test_should_update_owner
    put :update, :id => owners(:one).id, :owner => { }
    assert_redirected_to owner_path(assigns(:owner))
  end

  def test_should_destroy_owner
    assert_difference('Owner.count', -1) do
      delete :destroy, :id => owners(:one).id
    end

    assert_redirected_to owners_path
  end
end
