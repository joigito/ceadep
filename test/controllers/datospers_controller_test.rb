require 'test_helper'

class DatospersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @datosper = datospers(:one)
  end

  test "should get index" do
    get datospers_url
    assert_response :success
  end

  test "should get new" do
    get new_datosper_url
    assert_response :success
  end

  test "should create datosper" do
    assert_difference('Datosper.count') do
      post datospers_url, params: { datosper: { apellido: @datosper.apellido, docum: @datosper.docum, nombres: @datosper.nombres } }
    end

    assert_redirected_to datosper_url(Datosper.last)
  end

  test "should show datosper" do
    get datosper_url(@datosper)
    assert_response :success
  end

  test "should get edit" do
    get edit_datosper_url(@datosper)
    assert_response :success
  end

  test "should update datosper" do
    patch datosper_url(@datosper), params: { datosper: { apellido: @datosper.apellido, docum: @datosper.docum, nombres: @datosper.nombres } }
    assert_redirected_to datosper_url(@datosper)
  end

  test "should destroy datosper" do
    assert_difference('Datosper.count', -1) do
      delete datosper_url(@datosper)
    end

    assert_redirected_to datospers_url
  end
end
