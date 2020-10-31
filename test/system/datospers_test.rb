require "application_system_test_case"

class DatospersTest < ApplicationSystemTestCase
  setup do
    @datosper = datospers(:one)
  end

  test "visiting the index" do
    visit datospers_url
    assert_selector "h1", text: "Datospers"
  end

  test "creating a Datosper" do
    visit datospers_url
    click_on "New Datosper"

    fill_in "Apellido", with: @datosper.apellido
    fill_in "Docum", with: @datosper.docum
    fill_in "Nombres", with: @datosper.nombres
    click_on "Create Datosper"

    assert_text "Datosper was successfully created"
    click_on "Back"
  end

  test "updating a Datosper" do
    visit datospers_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @datosper.apellido
    fill_in "Docum", with: @datosper.docum
    fill_in "Nombres", with: @datosper.nombres
    click_on "Update Datosper"

    assert_text "Datosper was successfully updated"
    click_on "Back"
  end

  test "destroying a Datosper" do
    visit datospers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Datosper was successfully destroyed"
  end
end
