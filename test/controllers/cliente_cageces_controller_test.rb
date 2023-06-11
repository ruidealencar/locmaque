require "test_helper"

class ClienteCagecesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cliente_cagece = cliente_cageces(:one)
  end

  test "should get index" do
    get cliente_cageces_url
    assert_response :success
  end

  test "should get new" do
    get new_cliente_cagece_url
    assert_response :success
  end

  test "should create cliente_cagece" do
    assert_difference("ClienteCagece.count") do
      post cliente_cageces_url, params: { cliente_cagece: { cpf: @cliente_cagece.cpf, endereco: @cliente_cagece.endereco, nome: @cliente_cagece.nome, numero_do_cliente: @cliente_cagece.numero_do_cliente } }
    end

    assert_redirected_to cliente_cagece_url(ClienteCagece.last)
  end

  test "should show cliente_cagece" do
    get cliente_cagece_url(@cliente_cagece)
    assert_response :success
  end

  test "should get edit" do
    get edit_cliente_cagece_url(@cliente_cagece)
    assert_response :success
  end

  test "should update cliente_cagece" do
    patch cliente_cagece_url(@cliente_cagece), params: { cliente_cagece: { cpf: @cliente_cagece.cpf, endereco: @cliente_cagece.endereco, nome: @cliente_cagece.nome, numero_do_cliente: @cliente_cagece.numero_do_cliente } }
    assert_redirected_to cliente_cagece_url(@cliente_cagece)
  end

  test "should destroy cliente_cagece" do
    assert_difference("ClienteCagece.count", -1) do
      delete cliente_cagece_url(@cliente_cagece)
    end

    assert_redirected_to cliente_cageces_url
  end
end
