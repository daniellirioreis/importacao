class OrcamentoProduto < ActiveRecord::Base
  belongs_to :orcamento

  scope :sorted, -> { order("orcamento_produtos.sequencia") }
  
end
