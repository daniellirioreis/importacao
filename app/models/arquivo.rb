require 'nokogiri'
class Arquivo < ActiveRecord::Base

  before_save :criar_orcamento
  
  def criar_orcamento
    
    arquivo = Nokogiri::XML(File.open("#{caminho_do_arquivo}"))
    
    orcamento = Orcamento.new
    orcamento.numero_orcamento = arquivo.css("numeroorcamento").text
    orcamento.data_emissao = arquivo.css("dataemissao").text 
    orcamento.data_validade = arquivo.css("datavalidade").text
    orcamento.cpf_emitente = arquivo.css("cpfcnpjemitente").text
    orcamento.inscest_emitente = arquivo.css("inscestemitente").text
    orcamento.nome_emitente = arquivo.css("nomeemitente").text
    orcamento.endereco_emitente = arquivo.css("enderecoemitente").text
    orcamento.bairro_emitente = arquivo.css("bairroemitente").text
    orcamento.cidade_emitente = arquivo.css("cidadeemitente").text
    orcamento.uf_emitente = arquivo.css("ufemitente").text
    orcamento.cep_emitente = arquivo.css("cepemitente").text
    orcamento.telefone_emitente = arquivo.css("telefoneemitente").text
    
    
     orcamento.cpf_cnpj_cliente = arquivo.css("cpfcnpjcliente").text
     orcamento.inscest_cliente = arquivo.css("inscestcliente").text
     orcamento.nome_cliente = arquivo.css("nomecliente").text
     orcamento.endereco_cliente = arquivo.css("enderecocliente").text
     orcamento.bairro_cliente = arquivo.css("bairrocliente").text
     orcamento.cidade_cliente = arquivo.css("cidadecliente").text
     orcamento.uf_cliente = arquivo.css("ufcliente").text
     orcamento.cep_cliente = arquivo.css("cepcliente").text
     orcamento.telefone_cliente = arquivo.css("telefonecliente").text
     orcamento.email_cliente = arquivo.css("emailcliente").text 
     if orcamento.save!
     else
     end
  end
end
