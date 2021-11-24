Dado('que acesso a página de cadastro') do
    visit "/"
    click_on "Sign in"
   
end
  
Quando('submeto o meu cadastro com:') do |table|
    user = table.rows_hash

    find("input[id=email_create]").set user[:email]

    click_on "Create an account"
    find("input[id=id_gender1]").set true
    find("input[id=customer_firstname]").set user[:nome]
    find("input[id=customer_lastname]").set user[:ultimo_nome]
    find("input[id=passwd]").set user[:senha]
    find('#uniform-days').set value="2"
    
    



    sleep 5

end
  
Então('devo ser redirecionado para a tela inicial') do
    expect(page). to have_css 'p[class="light-green accent-2"]'
end


Quando('submeto o meu cadastro sem o email.') do 
    find("input[id=user_name]").set "Dollynete"
    find("input[id=user_lastname]").set "Orelha"
    find("input[id=user_address]").set "Rua Borgussa tentaro"
    find("input[id=user_university]").set "EDHA"
    find("input[id=user_profile]").set "Agióta"
    find("input[id=user_gender]").set "Molier"
    find("input[id=user_age]").set "122"

    click_on "Criar"
    sleep 5

end
  
Então('devo ver Oops! Informe seu email.') do
    expect(page). to have_css 'p[class="light-green accent-2"]'
end




