class AddCpfCnpjClienteToOrcamentos < ActiveRecord::Migration
  def change
    add_column :orcamentos, :cpf_cnpj_cliente, :string
    add_column :orcamentos, :inscest_cliente, :string
    add_column :orcamentos, :nome_cliente, :string
    add_column :orcamentos, :endereco_cliente, :string
    add_column :orcamentos, :bairro_cliente, :string
    add_column :orcamentos, :cidade_cliente, :string
    add_column :orcamentos, :uf_cliente, :string
    add_column :orcamentos, :cep_cliente, :string
    add_column :orcamentos, :telefone_cliente, :string
    add_column :orcamentos, :email_cliente, :string
  end
end
