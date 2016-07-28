class CreateOrcamentoServicos < ActiveRecord::Migration
  def change
    create_table :orcamento_servicos do |t|
      t.references :orcamento, index: true, foreign_key: true
      t.string :sequencia
      t.string :quant
      t.string :descricao
      t.string :produtivo
      t.string :cf
      t.string :valor_unit
      t.string :valor_total

      t.timestamps null: false
    end
  end
end
