*** Settings ***
Resource        ../resources/resources.resource

*** Keywords ***


Que o usuário esteja na página de login
    Abrir o navegador
        
O usuário realiza o login com credenciais válidas
    Location Should Be    ${URL}
    Wait Until Element Is Visible    ${input_email}    timeout=10s    
    Input Text    ${input_email}     ${g_VALID_STANDARD}
    Wait Until Element Is Visible    ${input_senha}    timeout=10s  
    Input Text    ${input_senha}    ${g_VALID_PASSWORD}
    Capture Page Screenshot

Clica no botão de login
    Wait Until Page Contains Element    ${click_button_login}     timeout=10s 
    Click Button    ${click_button_login}    
    
O usuário será redirecionado para a página de produtos com sucesso
    Location Should Be    ${INVENTORY}    timeout=20s   

O usuário estava na página de produtos com sucesso
    Wait Until Page Contains Element    ${check_page}   

O usuário clica em um produto específico na lista de produtos
    Wait Until Element Is Visible    ${check_page} 
    Click Element    ${click_product}
    
O usuário será redirecionado para a página de detalhes do produto
    Wait Until Element Is Visible    ${check_inventory}  timeout=20s
    

O usuário estava na página de detalhes do produto
    Wait Until Element Is Visible    ${check_inventory}    timeout=20s
    

O usuário clica no botão "Add to cart"
    Wait Until Element Is Visible    ${check_product}     timeout=20s
    Click Button    ${click_button_add_cart}

O produto será adicionado ao carrinho com sucesso
    Wait Until Element Is Visible    ${check_shop_cart}   timeout=20s
    

O usuário estava na página do carrinho com produtos adicionados
    Click Element  ${check_shop_cart}
    Wait Until Element Is Visible    ${check_shop_cart}   timeout=20s
    

O usuário clica no botão "Checkout"
    Wait Until Element Is Visible    ${check_shop_cart}   timeout=20s
    Click Button    ${click_button_checkout}
    
 O usuário será redirecionado para a página de preenchimento de informações de envio
    Location Should Be    ${CHECKOUT_INFO}
    Wait Until Page Contains Element    ${check_checkout_info}     timeout=20s
    
    
O usuário estava na página de informações de envio
    Location Should Be    ${CHECKOUT_INFO}
    
O usuário preenche os campos 
    Wait Until Element Is Visible    ${input_first_name}    timeout=10s
    Input Text    ${input_first_name}    Ana
    Wait Until Element Is Visible    ${input_last_name}    
    Input Text    ${input_last_name}    Sousa
    Wait Until Element Is Visible    ${input_zipcode}      
    Input Text    ${input_zipcode}    49595-260
    Capture Page Screenshot

Clica no botão "Continue"
    Wait Until Element Is Visible    ${click_button_continue}   timeout=20s
    Click Button    ${click_button_continue}

O usuário será redirecionado para a tela "Checkout: Overview"
    Wait Until Element Is Visible    ${check_checkout_overview}    timeout=10s
    Capture Page Screenshot

O usuário estava na tela "Checkout: Overview"
    Wait Until Element Is Visible    ${check_checkout_overview}    timeout=10s

O usuário clica no botão "Finish"
    Wait Until Element Is Visible    ${check_checkout_overview}    timeout=10s
    Click Button    ${click_button_finish}

A mensagem "Thank you for your order!" será exibida
    Wait Until Element Is Visible    ${check_checkout_complete}    timeout=10s
    Capture Page Screenshot

O usuário estava na tela de confirmação de compra "Checkout Complete"
    Wait Until Element Is Visible    ${check_checkout_complete}    timeout=10s

O usuário clica no botão "Back Home"
    Wait Until Element Is Visible    ${click_button_back_home}    timeout=10s
    Click Button    ${click_button_back_home}
    Capture Page Screenshot
    
O usuário será redirecionado para a página home
    Location Should Be    ${INVENTORY}    timeout=20s   
    Wait Until Page Contains Element    ${check_page}       
    


    Fechar o navegador