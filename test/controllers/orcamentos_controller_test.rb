require 'test_helper'

class OrcamentosControllerTest < ActionController::TestCase
  setup do
    @orcamento = orcamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orcamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orcamento" do
    assert_difference('Orcamento.count') do
      post :create, orcamento: { bairro_emitente: @orcamento.bairro_emitente, cep_emitente: @orcamento.cep_emitente, cidade_emitente: @orcamento.cidade_emitente, cpf_emitente: @orcamento.cpf_emitente, data_emissao: @orcamento.data_emissao, data_validade: @orcamento.data_validade, endereco_emitente: @orcamento.endereco_emitente, inscest_emitente: @orcamento.inscest_emitente, nome_emitente: @orcamento.nome_emitente, numero_orcamento: @orcamento.numero_orcamento, telefone_emitente: @orcamento.telefone_emitente, uf_emitente: @orcamento.uf_emitente }
    end

    assert_redirected_to orcamento_path(assigns(:orcamento))
  end

  test "should show orcamento" do
    get :show, id: @orcamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orcamento
    assert_response :success
  end

  test "should update orcamento" do
    patch :update, id: @orcamento, orcamento: { bairro_emitente: @orcamento.bairro_emitente, cep_emitente: @orcamento.cep_emitente, cidade_emitente: @orcamento.cidade_emitente, cpf_emitente: @orcamento.cpf_emitente, data_emissao: @orcamento.data_emissao, data_validade: @orcamento.data_validade, endereco_emitente: @orcamento.endereco_emitente, inscest_emitente: @orcamento.inscest_emitente, nome_emitente: @orcamento.nome_emitente, numero_orcamento: @orcamento.numero_orcamento, telefone_emitente: @orcamento.telefone_emitente, uf_emitente: @orcamento.uf_emitente }
    assert_redirected_to orcamento_path(assigns(:orcamento))
  end

  test "should destroy orcamento" do
    assert_difference('Orcamento.count', -1) do
      delete :destroy, id: @orcamento
    end

    assert_redirected_to orcamentos_path
  end
end
