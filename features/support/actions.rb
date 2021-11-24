module Actions

    def goto_login
        visit "/"
        click_link "Log in to your customer account"
    end

    def login_whith(email, senha)
        find("input[id=email]").set email
        find("input[id=passwd]").set senha
        click_button "SubmitLogin"
    end

end