require 'capybara'
require 'capybara/cucumber'

# Capybara.configure do |config|
#     config.default_driver = :selenium
# end

#Para quem quer fazer no google chrome
#É necessário instalar o chrome driver
#
Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end

#tempo de espera para aparecer algum elemento na tela (até 5 segundos)
Capybara.default_max_wait_time = 7