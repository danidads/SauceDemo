*** Variables ***
${URL}                         https://www.saucedemo.com/ 
${INVENTORY}                   https://www.saucedemo.com/inventory.html
${CHECKOUT_INFO}               https://www.saucedemo.com/checkout-step-one.html
${BROWSER}                     chrome

# Credenciais
${g_VALID_STANDARD}            standard_user
${g_VALID_PASSWORD}            secret_sauce

# Selectors 
${input_email}                 id:user-name
${input_senha}                 id:password  
${input_last_name}             id:last-name
${input_zipcode}               id:postal-code
${input_first_name}            id:first-name

${click_button_login}          id:login-button
${click_product}               id:item_4_img_link
${click_button_add_cart}       id:add-to-cart
${click_button_checkout}       id:checkout
${click_button_continue}       id:continue
${click_button_finish}         id:finish
${click_button_back_home}      id:back-to-products

${check_page}                  class:inventory_list
${check_inventory}             class:inventory_details
${check_product}               class:inventory_details_container
${check_shop_cart}             class:shopping_cart_badge
${check_product_cart}          class:cart_item
${check_checkout_info}         id:checkout_info_container
${check_checkout_overview}     id:checkout_summary_container
${check_checkout_complete}     id:checkout_complete_container