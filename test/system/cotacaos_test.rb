require "application_system_test_case"

class CotacaosTest < ApplicationSystemTestCase
  setup do
    @cotacao = cotacaos(:one)
  end

  test "visiting the index" do
    visit cotacaos_url
    assert_selector "h1", text: "Cotacaos"
  end

  test "creating a Cotacao" do
    visit cotacaos_url
    click_on "New Cotacao"

    fill_in "Description", with: @cotacao.description
    fill_in "Title", with: @cotacao.title
    click_on "Create Cotacao"

    assert_text "Cotacao was successfully created"
    click_on "Back"
  end

  test "updating a Cotacao" do
    visit cotacaos_url
    click_on "Edit", match: :first

    fill_in "Description", with: @cotacao.description
    fill_in "Title", with: @cotacao.title
    click_on "Update Cotacao"

    assert_text "Cotacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Cotacao" do
    visit cotacaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cotacao was successfully destroyed"
  end
end
