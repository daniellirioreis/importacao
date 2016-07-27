class AddArquivoToArquivos < ActiveRecord::Migration
  def change
    add_column :arquivos, :arquivo, :string
  end
end
