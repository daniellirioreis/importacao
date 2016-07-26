class CreateOrcamentos < ActiveRecord::Migration
  def change
    create_table :orcamentos do |t|
      t.string :numero_orcamento
      t.string :data_emissao
      t.string :data_validade
      t.string :cpf_emitente
      t.string :inscest_emitente
      t.string :nome_emitente
      t.string :endereco_emitente
      t.string :bairro_emitente
      t.string :cidade_emitente
      t.string :uf_emitente
      t.string :cep_emitente
      t.string :telefone_emitente

      t.timestamps null: false
    end
  end
end
