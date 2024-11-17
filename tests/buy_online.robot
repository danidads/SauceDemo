*** Settings ***


Resource        ../resources/resources.resource


*** Test Cases ***
Login com sucesso
    [Documentation]    Teste de login com credenciais válidas
    Given Que o usuário esteja na página de login
    When O usuário realiza o login com credenciais válidas
    And Clica no botão de login
    Then O usuário será redirecionado para a página de produtos com sucesso

Selecionar Produto 
    [Documentation]    Selecionar produto escolhido 
    Given O usuário estava na página de produtos com sucesso
    When O usuário clica em um produto específico na lista de produtos
    Then O usuário será redirecionado para a página de detalhes do produto

Adicionar Produto 
    [Documentation]    Adicionar Produto ao Carrinho de compras
    Given O usuário estava na página de detalhes do produto
    When O usuário clica no botão "Add to cart"
    Then O produto será adicionado ao carrinho com sucesso

Clicar em Checkout
    [Documentation]    Clicar no Carrinho de compras
    Given O usuário estava na página do carrinho com produtos adicionados
    When o usuário clica no botão "Checkout"
    Then o usuário será redirecionado para a página de preenchimento de informações de envio

Preencher informações 
    [Documentation]    Preencher informações de envio e clicar em continue
    Given O usuário estava na página de informações de envio
    When O usuário preenche os campos 
    And Clica no botão "Continue"
    Then O usuário será redirecionado para a tela "Checkout: Overview"

Finalizar compra    
    [Documentation]    Clicar em finish para finalizar a compra 
    Given O usuário estava na tela "Checkout: Overview"
    When O usuário clica no botão "Finish"
    Then A mensagem "Thank you for your order!" será exibida

Retornar à página inicial após finalizar a compra
    [Documentation]    Retornar para pagina Home
    Given O usuário estava na tela de confirmação de compra "Checkout Complete"
    When O usuário clica no botão "Back Home"
    Then O usuário será redirecionado para a página home