class Orcamento < ActiveRecord::Base
  has_one :arquivo
  has_many :produtos, :class_name => "OrcamentoProduto"
end
