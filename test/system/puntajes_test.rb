require "application_system_test_case"

class PuntajesTest < ApplicationSystemTestCase
  setup do
    @puntaje = puntajes(:one)
  end

  test "visiting the index" do
    visit puntajes_url
    assert_selector "h1", text: "Puntajes"
  end

  test "creating a Puntaje" do
    visit puntajes_url
    click_on "New Puntaje"

    fill_in "Antec doc", with: @puntaje.antec_doc
    fill_in "Antig doc", with: @puntaje.antig_doc
    fill_in "Antig tit", with: @puntaje.antig_tit
    fill_in "Becas otros", with: @puntaje.becas_otros
    fill_in "Concepto", with: @puntaje.concepto
    fill_in "Concursos", with: @puntaje.concursos
    fill_in "Datosper", with: @puntaje.datosper_id
    fill_in "Prom tit", with: @puntaje.prom_tit
    fill_in "Public", with: @puntaje.public
    fill_in "Red fed", with: @puntaje.red_fed
    fill_in "Titulo", with: @puntaje.titulo
    click_on "Create Puntaje"

    assert_text "Puntaje was successfully created"
    click_on "Back"
  end

  test "updating a Puntaje" do
    visit puntajes_url
    click_on "Edit", match: :first

    fill_in "Antec doc", with: @puntaje.antec_doc
    fill_in "Antig doc", with: @puntaje.antig_doc
    fill_in "Antig tit", with: @puntaje.antig_tit
    fill_in "Becas otros", with: @puntaje.becas_otros
    fill_in "Concepto", with: @puntaje.concepto
    fill_in "Concursos", with: @puntaje.concursos
    fill_in "Datosper", with: @puntaje.datosper_id
    fill_in "Prom tit", with: @puntaje.prom_tit
    fill_in "Public", with: @puntaje.public
    fill_in "Red fed", with: @puntaje.red_fed
    fill_in "Titulo", with: @puntaje.titulo
    click_on "Update Puntaje"

    assert_text "Puntaje was successfully updated"
    click_on "Back"
  end

  test "destroying a Puntaje" do
    visit puntajes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Puntaje was successfully destroyed"
  end
end
