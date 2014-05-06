require 'test_helper'

class PontoPassagemsControllerTest < ActionController::TestCase
  setup do
    @ponto_passagem = ponto_passagems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ponto_passagems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ponto_passagem" do
    assert_difference('PontoPassagem.count') do
      post :create, ponto_passagem: { ponto: @ponto_passagem.ponto }
    end

    assert_redirected_to ponto_passagem_path(assigns(:ponto_passagem))
  end

  test "should show ponto_passagem" do
    get :show, id: @ponto_passagem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ponto_passagem
    assert_response :success
  end

  test "should update ponto_passagem" do
    patch :update, id: @ponto_passagem, ponto_passagem: { ponto: @ponto_passagem.ponto }
    assert_redirected_to ponto_passagem_path(assigns(:ponto_passagem))
  end

  test "should destroy ponto_passagem" do
    assert_difference('PontoPassagem.count', -1) do
      delete :destroy, id: @ponto_passagem
    end

    assert_redirected_to ponto_passagems_path
  end
end
