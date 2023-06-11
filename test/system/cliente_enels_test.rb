require "application_system_test_case"

class ClienteEnelsTest < ApplicationSystemTestCase
  setup do
    @cliente_enel = cliente_enels(:one)
  end

  test "visiting the index" do
    visit cliente_enels_url
    assert_selector "h1", text: "Cliente enels"
  end

  test "should create cliente enel" do
    visit cliente_enels_url
    click_on "New cliente enel"

    fill_in "Cpf", with: @cliente_enel.cpf
    fill_in "Endereco", with: @cliente_enel.endereco
    fill_in "Nome", with: @cliente_enel.nome
    fill_in "Numero do cliente", with: @cliente_enel.numero_do_cliente
    click_on "Create Cliente enel"

    assert_text "Cliente enel was successfully created"
    click_on "Back"
  end

  test "should update Cliente enel" do
    visit cliente_enel_url(@cliente_enel)
    click_on "Edit this cliente enel", match: :first

    fill_in "Cpf", with: @cliente_enel.cpf
    fill_in "Endereco", with: @cliente_enel.endereco
    fill_in "Nome", with: @cliente_enel.nome
    fill_in "Numero do cliente", with: @cliente_enel.numero_do_cliente
    click_on "Update Cliente enel"

    assert_text "Cliente enel was successfully updated"
    click_on "Back"
  end

  test "should destroy Cliente enel" do
    visit cliente_enel_url(@cliente_enel)
    click_on "Destroy this cliente enel", match: :first

    assert_text "Cliente enel was successfully destroyed"
  end
end
