require 'test_helper'

class MatCargosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mat_cargo = mat_cargos(:one)
  end

  test "should get index" do
    get mat_cargos_url
    assert_response :success
  end

  test "should get new" do
    get new_mat_cargo_url
    assert_response :success
  end

  test "should create mat_cargo" do
    assert_difference('MatCargo.count') do
      post mat_cargos_url, params: { mat_cargo: { escuela: @mat_cargo.escuela, nombre: @mat_cargo.nombre } }
    end

    assert_redirected_to mat_cargo_url(MatCargo.last)
  end

  test "should show mat_cargo" do
    get mat_cargo_url(@mat_cargo)
    assert_response :success
  end

  test "should get edit" do
    get edit_mat_cargo_url(@mat_cargo)
    assert_response :success
  end

  test "should update mat_cargo" do
    patch mat_cargo_url(@mat_cargo), params: { mat_cargo: { escuela: @mat_cargo.escuela, nombre: @mat_cargo.nombre } }
    assert_redirected_to mat_cargo_url(@mat_cargo)
  end

  test "should destroy mat_cargo" do
    assert_difference('MatCargo.count', -1) do
      delete mat_cargo_url(@mat_cargo)
    end

    assert_redirected_to mat_cargos_url
  end
end
