require 'sinatra'
require 'sinatra/reloader'
also_reload './lib/**/*.rb'
require './lib/word'
require 'pry'

get '/' do
  @list = Word.all()
  erb(:index)
end

post '/' do
  add_word = Word.new(params)
  add_word.save()
  @list = Word.all()
  erb(:index)
end

get '/word/:id' do
  id = params['id']
  @list = Word.find(id)
  erb(:index)
end

post '/word/:id' do
  id = params['id']
  @list = Word.find(id)
  @list.add_definition(params)
  @list.change_photo(params)
  erb(:index)
end
