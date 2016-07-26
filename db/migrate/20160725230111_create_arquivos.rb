class CreateArquivos < ActiveRecord::Migration
  def change
    create_table :arquivos do |t|
      t.string :caminho_do_arquivo

      t.timestamps null: false
    end
  end
end
