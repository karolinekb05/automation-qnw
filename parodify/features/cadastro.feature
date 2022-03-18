#language: pt

Funcionalidade: Cadastro de Usuário
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

#para executar todos os cenários basta executar cucumber no terminal

#Cenário de sucesso
@happy #para executar somente esse cenário, executar no terminal: cucumber -t @happy
Cenario: Cadastro
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com email, senha e confirmação da senha
    Então devo ser redirecionado para a área logada

#Abaixo são os cenários alterantivos de falha

Cenario: Email não informado
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro sem o email
    Então devo ver É necessário informar o seu email

Cenario: Senha não informada
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro sem a senha
    Então devo ver É necessário informar a sua senha

Cenario: Senha divergente
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro com senha divergente
    Então devo ver As senhas inseridas não estão iguais

Cenario: Nenhum campo preenchido
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro sem preencher os campos
    Então devo ver É necessário informar seu email e sua senha