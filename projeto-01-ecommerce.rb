#Marina Alves Souza - Projeto 1

#Menu de Produtos
#Retorna o valor total dos produtos selecionados
def comprar_produto()
 
  preco_produto_A = 50.0
  preco_produto_B = 200.0
  preco_produto_C = 100.0
  
  puts "Selecione a opção desejada:"
  puts "[1] Produto A - R$50,00"
  puts "[2] Produto B - R$200,00"
  puts "[3] Produto C - R$100,00"

  produto = gets.chomp.to_i

  puts "Selecione a quantidade:"
  quantidade = gets.chomp.to_i

  if produto == 1
      return preco_produto_A * quantidade
  end

  if produto == 2
      return preco_produto_B * quantidade
  end

  if produto == 3
      return preco_produto_C * quantidade
  end

end


###### INICIO DO PROGRAMA #####
opcao = 0
subtotal = 0.0
puts "Selecione a opção desejada:"
#Enquanto a opção [2]Sair, não for selecionada o sistema continua rodando
while opcao != 2 

  puts "[1] Comprar"
  puts "[2] Sair"
  opcao = gets.chomp.to_i

  if opcao == 1
    compra = comprar_produto()
    subtotal = subtotal + compra
    puts "Subtotal: #{subtotal}"
    puts "Digite 0 para voltar ao menu inicial:"
    voltar = gets.chomp.to_i
      if voltar == 0
        puts "voltando ao menu inicial"
        #retorna ao menu inicial, continuando o loop
        next
      end
  end

  if opcao == 2
    puts "Até breve!!!"
    gets.chomp.to_i
  end
 
end