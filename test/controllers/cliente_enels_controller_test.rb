require "test_helper"

class ClienteEnelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cliente_enel = cliente_enels(:one)
  end

  test "should get index" do
    get cliente_enels_url
    assert_response :success
  end

  test "should get new" do
    get new_cliente_enel_url
    assert_response :success
  end

  test "should create cliente_enel" do
    assert_difference("ClienteEnel.count") do
      post cliente_enels_url, params: { cliente_enel: { cpf: @cliente_enel.cpf, endereco: @cliente_enel.endereco, nome: @cliente_enel.nome, numero_do_cliente: @cliente_enel.numero_do_cliente } }
    end

    assert_redirected_to cliente_enel_url(ClienteEnel.last)
  end

  test "should show cliente_enel" do
    get cliente_enel_url(@cliente_enel)
    assert_response :success
  end

  test "should get edit" do
    get edit_cliente_enel_url(@cliente_enel)
    assert_response :success
  end

  test "should update cliente_enel" do
    patch cliente_enel_url(@cliente_enel), params: { cliente_enel: { cpf: @cliente_enel.cpf, endereco: @cliente_enel.endereco, nome: @cliente_enel.nome, numero_do_cliente: @cliente_enel.numero_do_cliente } }
    assert_redirected_to cliente_enel_url(@cliente_enel)
  end

  test "should destroy cliente_enel" do
    assert_difference("ClienteEnel.count", -1) do
      delete cliente_enel_url(@cliente_enel)
    end

    assert_redirected_to cliente_enels_url
  end
end
