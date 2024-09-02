class Compras
  def initialize
    @itens_estoque = []
    @itens_carrinho = []
  end

  def estoque
    @itens_estoque = [
      {nome: "Blusa feminina rosa", preco: 45.78, quantidade: 15},
      {nome: "Calça jeans feminina", preco: 60.89, quantidade: 5},
      {nome: "Short brim feminino", preco: 45.90, quantidade: 8},
      {nome: "Short jeans masculino", preco: 58.99, quantidade: 10},
      {nome: "Sandalia feminina", preco: 135.52, quantidade: 15},
      {nome: "Chinela haviana masculina", preco: 48.91, quantidade: 18},
      {nome: "Camisa social manga longa", preco: 85.95, quantidade: 14},
      {nome: "Calça jeans masculina", preco: 148.75, quantidade: 25 }
    ]
  end

  def carrinho
    puts "Estoque"
    @itens_estoque.each_with_index do |item, indice|
      puts "#{indice + 1} item | #{item[:nome]} | R$ #{item[:preco]} | Estoque: #{item[:quantidade]}"
    end
    @itens_estoque
  end

  def comprar
    carrinho
    loop do
      puts "Digite o número do item | 0 para sair"
      item_compra = gets.chomp.to_i
      
      break if item_compra == 0
      
      if item_compra > 0 && item_compra <= @itens_estoque.length
        item = @itens_estoque[item_compra - 1]
        
        puts "Quantidade"
        quantidade_item = gets.chomp.to_i
        
        if quantidade_item > 0 && quantidade_item <= item[:quantidade]
          @itens_carrinho << {nome: item[:nome], preco: item[:preco], quantidade: quantidade_item}
          puts "#{quantidade_item} x #{item[:nome]} foi adicionado ao carrinho!"
        else
          puts "Quantidade inválida, tente novamente!"
        end
      else
        puts "Número inválido, tente novamente!"
      end
    end
  end
  
  def ver_carrinho
    puts "Carrinho"
    @itens_carrinho.each_with_index do |item, indice|
      puts "#{indice + 1} item | Produto: #{item[:nome]} |Preço: R$ #{item[:preco]} | Quantidade: #{item[:quantidade]}"
    end
  end

  def calcula_valor
    total = @itens_carrinho.sum { |item| item[:preco] * item[:quantidade] }
    puts "Valor total do carrinho: R$ #{'%.2f' % total}"
    puts "Desconto: 1 - Sim | Enter - não"
    desconto = gets.chomp
    if desconto == '1'
      puts "Desconto - %"
      porcentagem_desconto = gets.chomp.to_f

      total = total - (total * porcentagem_desconto / 100)

      print "Valor com desconto: #{'%.2f' % total}"
      puts ""
    else
      puts "Valor total do carrinho: R$ #{'%.2f' % total}"
    end
  end

  def menu
    loop do
      puts "\nMenu de compras"
      puts "1 - Ver estoque"
      puts "2 - Comprar itens"
      puts "3 - Ver carrinho"
      puts "4 - Calcular valor total"
      puts "0 - Sair"
      print "Opção: "

      opcao = gets.chomp.to_i

      if opcao == 1
        carrinho
      elsif opcao == 2
        comprar
      elsif opcao == 3
        ver_carrinho
      elsif opcao == 4
        calcula_valor
      elsif opcao == 0
        puts "saindo do sistema..."
        return
      else
        puts "Opção inválida! Tente novamente"
      end
    end
  end
end




meu_carrinho = Compras.new


meu_carrinho.estoque
meu_carrinho.menu


#Fazer ainda um menu e criar uma função de desconto
#Fazer um arquivo login.txt com o usuário e senha
#e o arquivo login.rb
