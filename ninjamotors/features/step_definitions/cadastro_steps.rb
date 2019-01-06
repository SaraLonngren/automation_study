Dado("que eu tenho o seguinte cadastro") do |table|
    @usaurio = table.rows_hash 
end

Quando('clico em Cadastrar') do
    visit 'http://ninjamotors.herokuapp.com/cadastre-se'
    
    find('#fullName').set @usuario[:nome] 
    find('#email').set @usuario[:email] 
    find('#password').set @usuario[:senha] 
    find('#do-sign-up').click
end 

Então('devo ver a mensagem {string}') do |mensagem|
    alerta = find('.alert')
    expect(alerta.text).to eql @usuario[:nome] #mensagem
end

Então('meu cadastro deve ocorrer com sucesso') do
    menu_usuario = find('#userMenu')
    expect(menu_usuario.text).to eql @nome
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
