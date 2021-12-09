class LoginPage
  include Capybara::DSL
  def go
    visit '/'
    click_on 'Sign in'
  end

  def with(email, senha)
    find('input[id=email]').set email
    find('input[id=passwd]').set senha
    click_button 'SubmitLogin'
  end

  def message
    find('.alert-danger').text
  end 
end
