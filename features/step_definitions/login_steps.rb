Dado('que acesso a página de login') do
  @login = LoginPage.new
  @login.go
end

Quando('submeto o meu login com: {string} e {string}') do |email, senha|
  @login.with(email, senha)
end

Então('devo ser redirecionado para a área logada') do
  expect(page).to have_css "body[id='my-account']"
end

Então('devo ver a mensagem: {string}') do |expect_message|
  @login = LoginPage.new
  expect(@login.message).to have_content expect_message
end

# usuário cadastrado no site:
# badroanosobanol@gmail.com senha: 12345
 