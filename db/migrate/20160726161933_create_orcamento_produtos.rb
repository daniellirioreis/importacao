class CreateOrcamentoProdutos < ActiveRecord::Migration
  def change
    create_table :orcamento_produtos do |t|
      t.references :orcamento, index: true, foreign_key: true
      t.string :sequencia
      t.string :quant
      t.string :descricao
      t.string :vend_prod
      t.string :cf
      t.string :valor_unit
      t.string :valor_total

      t.timestamps null: false
    end
  end
end
