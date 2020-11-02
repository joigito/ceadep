require 'test_helper'

class PuntajesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @puntaje = puntajes(:one)
  end

  test "should get index" do
    get puntajes_url
    assert_response :success
  end

  test "should get new" do
    get new_puntaje_url
    assert_response :success
  end

  test "should create puntaje" do
    assert_difference('Puntaje.count') do
      post puntajes_url, params: { puntaje: { antec_doc: @puntaje.antec_doc, antig_doc: @puntaje.antig_doc, antig_tit: @puntaje.antig_tit, becas_otros: @puntaje.becas_otros, concepto: @puntaje.concepto, concursos: @puntaje.concursos, datosper_id: @puntaje.datosper_id, prom_tit: @puntaje.prom_tit, public: @puntaje.public, red_fed: @puntaje.red_fed, titulo: @puntaje.titulo } }
    end

    assert_redirected_to puntaje_url(Puntaje.last)
  end

  test "should show puntaje" do
    get puntaje_url(@puntaje)
    assert_response :success
  end

  test "should get edit" do
    get edit_puntaje_url(@puntaje)
    assert_response :success
  end

  test "should update puntaje" do
    patch puntaje_url(@puntaje), params: { puntaje: { antec_doc: @puntaje.antec_doc, antig_doc: @puntaje.antig_doc, antig_tit: @puntaje.antig_tit, becas_otros: @puntaje.becas_otros, concepto: @puntaje.concepto, concursos: @puntaje.concursos, datosper_id: @puntaje.datosper_id, prom_tit: @puntaje.prom_tit, public: @puntaje.public, red_fed: @puntaje.red_fed, titulo: @puntaje.titulo } }
    assert_redirected_to puntaje_url(@puntaje)
  end

  test "should destroy puntaje" do
    assert_difference('Puntaje.count', -1) do
      delete puntaje_url(@puntaje)
    end

    assert_redirected_to puntajes_url
  end
end
