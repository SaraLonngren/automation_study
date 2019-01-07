Dado("que eu tenho o seguinte cadastro") do |table|
    @usuario = table.rows_hash 
end

Quando('clico em Cadastrar') do
    visit 'http://ninjamotors.herokuapp.com/cadastre-se'
    
    find('#fullName').set @usuario[:nome] #@nome
    find('#email').set @usuario[:email]  #@email
    find('#password').set @usuario[:senha] #@senha
    find('#do-sign-up').click
end 

Então('devo ver a mensagem {string}') do |mensagem|
    alerta = find('.alert')
    expect(alerta.text).to eql mensagem
end

Então('meu cadastro deve ocorrer com sucesso') do
    menu_usuario = find('#userMenu')
    expect(menu_usuario.text).to eql@usuario[:nome] #@nome
end 

# Dado('que meu nome completo é {string}') do |nome|
#     @nome = nome
# end

# Dado('meu email é {string}') do |email|
#     @email = email
# end 

# Dado('preencho o campo senha com {string}') do |senha|
#     @senha = senha
# end 
