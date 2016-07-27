class AddArquivoToOrcamentos < ActiveRecord::Migration
  def change
    add_reference :orcamentos, :arquivo, index: true, foreign_key: true
  end
end
