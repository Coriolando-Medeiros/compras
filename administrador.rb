require_relative 'compras'

class Administrador
  def initialize
    @compras = Compras.new
    @compras.estoque # Inicializa o estoque na mesma instância
  end
  
  def ver_estoque
    @compras.carrinho # Usa a instância existente de Compras
  end

  def atualizar_estoque
    ver_estoque
    puts "Digite o número do item que deseja atualizar"
    puts "Enter para sair"
    numero_item = gets.chomp
    
    return if numero_item.empty?
    
    numero_item = numero_item.to_i
  
    if numero_item > 0 && numero_item <= @compras.itens_estoque.length
      item_selecionado = @compras.itens_estoque[numero_item - 1]
  
      puts "Digite o novo preço para o item '#{item_selecionado[:nome]}'"
      novo_preco = gets.chomp.to_f
      item_selecionado[:preco] = novo_preco
  
      puts "Digite a nova quantidade para o item '#{item_selecionado[:nome]}'"
      nova_quantidade = gets.chomp.to_i
      item_selecionado[:quantidade] = nova_quantidade
  
      puts "\nItem atualizado:"
      puts "Nome: #{item_selecionado[:nome]} | Novo preço: R$ #{item_selecionado[:preco]} | Quantidade: #{item_selecionado[:quantidade]}"
    else
      puts "Número do item inválido!"
    end
  end

  def remover_item
    puts "Em implementação"
  end

  def adicionar_usuario
    puts "Em implementação"
  end

  def remover_usuario
    puts "Em implementação"
  end

  def menu_administrador
    loop do
      puts "\nMenu de Administrador"
      puts "1 - Adicionar usuário"
      puts "2 - Remover usuário"
      puts "------------------------"
      puts "3 - Ver estoque"
      puts "4 - Atualizar estoque"
      puts "5 - Remover item"
      puts "0 - Sair"
      print "Opção: "

      opcao = gets.chomp

      if opcao == '1'
        adicionar_usuario
      elsif opcao == '2'
        remover_usuario
      elsif opcao == '3'
        ver_estoque
      elsif opcao == '4'
        atualizar_estoque
      elsif opcao == '5'
        remover_item
      elsif opcao == '0'
        puts "Saindo..."
        return
      else
        puts "Opção inválida! Tente novamente"
      end
    end
  end
end

administrador = Administrador.new
administrador.menu_administrador
