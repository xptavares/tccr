require 'test_helper'

class RotsControllerTest < ActionController::TestCase
  setup do
    @rot = rots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rot" do
    assert_difference('Rot.count') do
      post :create, rot: { nome: @rot.nome }
    end

    assert_redirected_to rot_path(assigns(:rot))
  end

  test "should show rot" do
    get :show, id: @rot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rot
    assert_response :success
  end

  test "should update rot" do
    patch :update, id: @rot, rot: { nome: @rot.nome }
    assert_redirected_to rot_path(assigns(:rot))
  end

  test "should destroy rot" do
    assert_difference('Rot.count', -1) do
      delete :destroy, id: @rot
    end

    assert_redirected_to rots_path
  end
end
