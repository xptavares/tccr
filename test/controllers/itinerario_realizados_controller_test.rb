require 'test_helper'

class ItinerarioRealizadosControllerTest < ActionController::TestCase
  setup do
    @itinerario_realizado = itinerario_realizados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itinerario_realizados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itinerario_realizado" do
    assert_difference('ItinerarioRealizado.count') do
      post :create, itinerario_realizado: { date: @itinerario_realizado.date, latitudo: @itinerario_realizado.latitudo, longitude: @itinerario_realizado.longitude }
    end

    assert_redirected_to itinerario_realizado_path(assigns(:itinerario_realizado))
  end

  test "should show itinerario_realizado" do
    get :show, id: @itinerario_realizado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @itinerario_realizado
    assert_response :success
  end

  test "should update itinerario_realizado" do
    patch :update, id: @itinerario_realizado, itinerario_realizado: { date: @itinerario_realizado.date, latitudo: @itinerario_realizado.latitudo, longitude: @itinerario_realizado.longitude }
    assert_redirected_to itinerario_realizado_path(assigns(:itinerario_realizado))
  end

  test "should destroy itinerario_realizado" do
    assert_difference('ItinerarioRealizado.count', -1) do
      delete :destroy, id: @itinerario_realizado
    end

    assert_redirected_to itinerario_realizados_path
  end
end
