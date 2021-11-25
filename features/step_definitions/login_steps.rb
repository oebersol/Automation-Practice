Dado('que acesso a página de login') do
  goto_login
end

Quando('submeto o meu login com: {string} e {string}') do |email, senha|
  login_whith(email, senha)
end

Então('devo ser redirecionado para a área logada') do
  expect(page).to have_css "body[id='my-account']"
end

Então('devo ver a mensagem: {string}') do |expect_message|
  message = find('.alert-danger')
  expect(message.text).to have_content expect_message
end

# usuário cadastrado no site:
# badroanosobanol@gmail.com senha: 12345
