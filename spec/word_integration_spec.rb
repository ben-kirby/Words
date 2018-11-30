require ('rspec')
require ('capybara/rspec')
require ('pry')
require ('./app')
require ('capybara')
require ('./lib/word')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
