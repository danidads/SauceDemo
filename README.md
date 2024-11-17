 Desafio Funcional de QA – Ritain.io

## Descrição do Desafio
Este repositório contém a automação de testes para um desafio de QA funcional solicitado pela Ritain.io. A aplicação em teste é o site de comércio eletrônico SauceDemo.

**URL do site**: [https://www.saucedemo.com/](https://www.saucedemo.com/)

## Cenários de Teste
Os cenários de sucesso em BDD automatizados de caso de sucesso cobrem:

***Teste 1: Login com Sucesso***

**Descrição**: Verifica se o usuário consegue realizar o login com credenciais válidas.

**Pré-condição**: O usuário está na página de login.

**Passos**:
    Given Que o usuário esteja na página de login
    When O usuário realiza o login com credenciais válidas
    And Clica no botão de login
    Then O usuário será redirecionado para a página de produtos com sucesso

**Resultado Esperado**: O usuário é redirecionado com sucesso para a página de produtos.

***Teste 2: Selecionar Produto***

**Descrição**: Verifica se o usuário consegue acessar a página de detalhes de um produto específico.

**Pré-condição**: O usuário está na página de produtos.

**Passos**:
    Given O usuário estava na página de produtos com sucesso
    When O usuário clica em um produto específico na lista de produtos
    Then O usuário será redirecionado para a página de detalhes do produto


**Resultado Esperado**: O usuário é redirecionado para a página de detalhes do produto selecionado.

***Teste 3: Adicionar Produto ***

**Descrição**: Verifica se o usuário consegue adicionar um produto ao carrinho.

**Pré-condição**: O usuário está na página de detalhes de um produto.

**Passos**:
    Given O usuário estava na página de detalhes do produto
    When O usuário clica no botão "Add to cart"
    Then O produto será adicionado ao carrinho com sucesso

**Resultado Esperado**: O produto é adicionado ao carrinho com sucesso.

***Teste 4: Clicar em Checkout***

**Descrição**: Verifica se o usuário consegue acessar a página de informações de envio ao iniciar o processo de checkout.

**Pré-condição**: O usuário está na página do carrinho com produtos adicionados.

**Passos**:
    Given O usuário estava na página do carrinho com produtos adicionados
    When o usuário clica no botão "Checkout"
    Then o usuário será redirecionado para a página de preenchimento de informações de envio

**Resultado Esperado**: O usuário é redirecionado para a página de preenchimento de informações de envio.

***Teste 5: Preencher Informações***

**Descrição**: Verifica se o usuário consegue preencher as informações de envio e continuar o processo de checkout.

**Pré-condição**: O usuário está na página de informações de envio.

**Passos**:
    Given O usuário estava na página de informações de envio
    When O usuário preenche os campos 
    And Clica no botão "Continue"
    Then O usuário será redirecionado para a tela "Checkout: Overview"

**Resultado Esperado**: O usuário é redirecionado para a página "Checkout: Overview".

***Teste 6: Finalizar Compra***

**Descrição**: Verifica se o usuário consegue finalizar a compra com sucesso.

**Pré-condição**: O usuário está na página "Checkout: Overview".

**Passos**:
    Given O usuário estava na tela "Checkout: Overview"
    When O usuário clica no botão "Finish"
    Then A mensagem "Thank you for your order!" será exibida

**Resultado Esperado**: A mensagem "Thank you for your order!" é exibida.


***Teste 7: Retornar à Página Inicial após finalizar a compra***

**Descrição**: Verifica se o usuário consegue retornar para a página principal após a finalização da compra.

**Pré-condição**: O usuário está na página "Checkout Complete" com a compra finalizada.

**Passos**:
    Given O usuário estava na tela de confirmação de compra "Checkout Complete"
    When O usuário clica no botão "Back Home"
    Then O usuário será redirecionado para a página home

**Resultado Esperado**: O usuário é redirecionado para a página inicial do site.

## Tecnologias Utilizadas
- Robot Framework
- Selenium Library


## Estrutura do projeto e-commerce
    |
    |----keywords
    |    |---buy_online_keywords.resource
    |----logs
    |----resources
    |    |---keywords.resource
    |    |---resources.resource
    |----tests
    |    |---buy_online.robot
    |----variables
    |    |---variables.resource
    |----.gitfgnore
    |----README.md



## Comando de execução

robot -d ../logs buy_online.robot