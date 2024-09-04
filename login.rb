def login
    puts "Sistema de compras"
    puts ""
    puts "Faça login para ter"
    puts "acesso ao sistema"
    puts ""
    print "Usuário: "
    @usuario = gets.chomp
    print "Senha: "
    @senha = gets.chomp
end


def autenticacao
  if File.exist?("login.txt") && !File.zero?("login.txt")
    linhas = File.readlines("login.txt").map(&:chomp)

    autenticado = linhas.any? do |linha|
      username, password = linha.split(':')
      @usuario == username && @senha == password
    end

    if autenticado
      puts "Usuário autenticado!"
      puts "Bem-vindo #{@usuario.capitalize}"
      if @usuario == "administrador"
        require_relative 'administrador'
        administrador = Administrador.new
        administrador.menu_administrador
      else
        require_relative 'compras'
        meu_carrinho = Compras.new
        meu_carrinho.menu
      end
    else
      puts "Usuário e/ou senha inválidos!"
      login
    end
  else
    puts "Banco de dados não encontrado"
  end
end

login
autenticacao