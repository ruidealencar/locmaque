require "application_system_test_case"

class ClienteCagecesTest < ApplicationSystemTestCase
  setup do
    @cliente_cagece = cliente_cageces(:one)
  end

  test "visiting the index" do
    visit cliente_cageces_url
    assert_selector "h1", text: "Cliente cageces"
  end

  test "should create cliente cagece" do
    visit cliente_cageces_url
    click_on "New cliente cagece"

    fill_in "Cpf", with: @cliente_cagece.cpf
    fill_in "Endereco", with: @cliente_cagece.endereco
    fill_in "Nome", with: @cliente_cagece.nome
    fill_in "Numero do cliente", with: @cliente_cagece.numero_do_cliente
    click_on "Create Cliente cagece"

    assert_text "Cliente cagece was successfully created"
    click_on "Back"
  end

  test "should update Cliente cagece" do
    visit cliente_cagece_url(@cliente_cagece)
    click_on "Edit this cliente cagece", match: :first

    fill_in "Cpf", with: @cliente_cagece.cpf
    fill_in "Endereco", with: @cliente_cagece.endereco
    fill_in "Nome", with: @cliente_cagece.nome
    fill_in "Numero do cliente", with: @cliente_cagece.numero_do_cliente
    click_on "Update Cliente cagece"

    assert_text "Cliente cagece was successfully updated"
    click_on "Back"
  end

  test "should destroy Cliente cagece" do
    visit cliente_cagece_url(@cliente_cagece)
    click_on "Destroy this cliente cagece", match: :first

    assert_text "Cliente cagece was successfully destroyed"
  end
end
