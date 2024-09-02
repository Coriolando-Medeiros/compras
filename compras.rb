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
      puts "#{indice + 1} item | #{item[:nome]} | R$ #{item[:preco]} | Quantidade: #{item[:quantidade]}"
    end
  end

  def calcula_valor
    total = @itens_carrinho.sum { |item| item[:preco] * item[:quantidade] }
    puts "Valor total do carrinho: R$ #{total}"
  end
end


meu_carrinho = Compras.new

meu_carrinho.estoque
meu_carrinho.carrinho
meu_carrinho.comprar
meu_carrinho.ver_carrinho
meu_carrinho.calcula_valor


