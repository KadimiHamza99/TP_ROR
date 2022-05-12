require "application_system_test_case"

class MaterielsTest < ApplicationSystemTestCase
  setup do
    @materiel = materiels(:one)
  end

  test "visiting the index" do
    visit materiels_url
    assert_selector "h1", text: "Materiels"
  end

  test "creating a Materiel" do
    visit materiels_url
    click_on "New Materiel"

    fill_in "Marque", with: @materiel.marque
    fill_in "Os", with: @materiel.os
    click_on "Create Materiel"

    assert_text "Materiel was successfully created"
    click_on "Back"
  end

  test "updating a Materiel" do
    visit materiels_url
    click_on "Edit", match: :first

    fill_in "Marque", with: @materiel.marque
    fill_in "Os", with: @materiel.os
    click_on "Update Materiel"

    assert_text "Materiel was successfully updated"
    click_on "Back"
  end

  test "destroying a Materiel" do
    visit materiels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Materiel was successfully destroyed"
  end
end
