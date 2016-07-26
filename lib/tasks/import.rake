require 'nokogiri'
task :import  => :environment do

  doc = Nokogiri::XML(File.open("orcamento.xml"))
  doc.css("cliente").each do |c| 
    puts c.children.css('cpfcnpjcliente').text
  end



#  doc.css("aluno").each do |a| 
#    idade =""
#    name = ""    
#    name = a.children.css('name').text
#    idade = a.children.css('idade').text
#    puts  name + idade     
#  end    
end