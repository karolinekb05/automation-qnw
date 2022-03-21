Dado('que acesso a página de cadastro') do
    visit "https://spigo.net/siscan/"
    click_on "Cadastrar/Login"
    click_on "Não possui cadastro? Clique aqui!"
    sleep 3
end
  
Quando('submeto o meu cadastro com:') do |table|
    user = table.rows_hash
    find("input[name=pessoa_nome]").set user[:nome]
    find("input[name=pessoa_email]").set user[:email]
    find("input[name=pessoa_senha]").set user[:senha]
    find("input[name=pessoa_telefone1]").set user[:telefone]
    click_on "Cadastrar"
    sleep 3
end
  
Então('devo logar com:') do |table|
    click_on "Cadastrar/Login"
    user = table.rows_hash
    find("input[name=pessoa_email]").set user[:email]
    find("input[name=pessoa_senha]").set user[:senha]
    click_on "Login"
    sleep 5
end