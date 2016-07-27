class AddXmlToArquivos < ActiveRecord::Migration
  def change
    add_column :arquivos, :xml, :string
  end
end
