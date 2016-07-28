class Orcamento < ActiveRecord::Base
  has_one :arquivo
  has_many :produtos, :class_name => "OrcamentoProduto"
  has_many :servicos, :class_name => "OrcamentoServico"
end
