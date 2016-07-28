class OrcamentoServico < ActiveRecord::Base
  belongs_to :orcamento
  
  scope :sorted, -> { order("orcamento_servicos.sequencia") }
  
end
