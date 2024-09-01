# Sistema de Compras

Este é um sistema simples de compras desenvolvido em Ruby. Ele permite que os usuários visualizem o estoque de produtos, adicionem itens ao carrinho de compras e calculem o valor total do carrinho. O sistema é interativo e baseado em linha de comando.

## Funcionalidades

1. **Visualização do Estoque**:
   - Exibe uma lista de produtos disponíveis, com detalhes sobre nome, preço e quantidade em estoque.

2. **Adicionar Itens ao Carrinho**:
   - Permite que o usuário selecione itens do estoque para adicionar ao carrinho de compras.
   - O usuário pode especificar a quantidade desejada para cada item.

3. **Verificar Itens no Carrinho**:
   - Mostra uma lista dos itens que foram adicionados ao carrinho, com detalhes sobre nome, preço e quantidade.

4. **Calcular Valor Total do Carrinho**:
   - Calcula e exibe o valor total dos itens presentes no carrinho.

## Instruções de Uso

1. **Instalar Ruby**:
   - Certifique-se de que o Ruby esteja instalado em seu sistema. Você pode baixar e instalar Ruby a partir de [https://www.ruby-lang.org](https://www.ruby-lang.org).

2. **Executar o Código**:
   - Salve o código Ruby fornecido em um arquivo chamado `compras.rb`.
   - Abra um terminal e navegue até o diretório onde o arquivo `compras.rb` está salvo.
   - Execute o código com o comando:
```sh
   ruby compras.rb
```

3. **Interagir com o Sistema**:
   - O sistema exibirá o estoque de produtos e fornecerá opções para comprar itens, verificar o carrinho e calcular o valor total.

## Funcionalidades Futuras

- **Cálculo de Desconto**:
  - Será adicionado um recurso para aplicar descontos aos itens do carrinho.

- **Menu Interativo**:
  - Um menu será implementado para permitir que os usuários escolham entre diferentes opções, como comprar, ver o carrinho, calcular o total, ou sair do sistema.

## Exemplo de Saída

Ao executar o código, você verá a seguinte saída de exemplo:

Estoque 1 item | Blusa feminina rosa | R$ 45.78 | Estoque: 15 2 item | Calça jeans feminina | R$ 60.89 | Estoque: 5 ...

Digite o número do item | 0 para sair 1 Quantidade 2 2 x Blusa feminina rosa foi adicionado ao carrinho!

...

Carrinho 1 item | Blusa feminina rosa | R$ 45.78 | Quantidade: 2

Valor total do carrinho: R$ 91.56

css


## Contribuindo

Se você quiser contribuir para o desenvolvimento deste sistema, sinta-se à vontade para fazer um fork do repositório, criar uma branch com suas melhorias e enviar um pull request.

## Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE](LICENSE)
