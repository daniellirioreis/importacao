class AddCodOperToOrcamentos < ActiveRecord::Migration
  def change
    add_column :orcamentos, :vlr_total, :string
    add_column :orcamentos, :cod_oper, :string
    add_column :orcamentos, :desc_oper, :string
    add_column :orcamentos, :placa, :string
    add_column :orcamentos, :cod_vendedor, :string
    add_column :orcamentos, :nome_vendedor, :string
    add_column :orcamentos, :ano_modelo, :string
    add_column :orcamentos, :km_rodado, :string
    add_column :orcamentos, :chassi, :string
    add_column :orcamentos, :cod_departamento, :string
    add_column :orcamentos, :nome_departamento, :string
    add_column :orcamentos, :cod_publico, :string
    add_column :orcamentos, :nome_publico, :string
    add_column :orcamentos, :cod_pagamento, :string
    add_column :orcamentos, :desc_pagamento, :string    
  end
end
