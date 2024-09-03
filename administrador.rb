class Administrador
  
  def ver_estoque
    puts "Em implementação"
    require_relative 'estoque'
  end

  def atualizar_estoque
    puts "Em implementação"
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