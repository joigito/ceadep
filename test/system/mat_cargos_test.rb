require "application_system_test_case"

class MatCargosTest < ApplicationSystemTestCase
  setup do
    @mat_cargo = mat_cargos(:one)
  end

  test "visiting the index" do
    visit mat_cargos_url
    assert_selector "h1", text: "Mat Cargos"
  end

  test "creating a Mat cargo" do
    visit mat_cargos_url
    click_on "New Mat Cargo"

    fill_in "Escuela", with: @mat_cargo.escuela
    fill_in "Nombre", with: @mat_cargo.nombre
    click_on "Create Mat cargo"

    assert_text "Mat cargo was successfully created"
    click_on "Back"
  end

  test "updating a Mat cargo" do
    visit mat_cargos_url
    click_on "Edit", match: :first

    fill_in "Escuela", with: @mat_cargo.escuela
    fill_in "Nombre", with: @mat_cargo.nombre
    click_on "Update Mat cargo"

    assert_text "Mat cargo was successfully updated"
    click_on "Back"
  end

  test "destroying a Mat cargo" do
    visit mat_cargos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mat cargo was successfully destroyed"
  end
end
