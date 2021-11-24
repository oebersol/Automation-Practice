Dado('que acesso a página de login') do
    visit "/"
    click_link "Log in to your customer account"
   
end
  
Quando('submeto o meu login com:') do |table|
    user = table.rows_hash

    find("input[id=email]").set user[:email]
    find("input[id=passwd]").set user[:senha]
    click_button "SubmitLogin"
    
end
  
Então('devo ser redirecionado para a área logada') do
    expect(page). to have_css "body[id='my-account']"

end

  
Então('devo ver a mensagem: {string}') do |expect_message|
    message = find('.alert-danger')
    expect(message.text).to have_content expect_message

end


# usuário cadastrado no site:
# badroanosobanol@gmail.com senha: 12345