require ('rspec')
require ('capybara/rspec')
require ('pry')
require ('./app')
require ('capybara')
require ('./lib/word')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('adding a new word', {:type => :feature}) do
  it ('will add a new word to the page when the form is filled out') do
    visit('/')
    fill_in('new_word', :with=>'Dog')
    fill_in('definition', :with=> "An animal")
    click_button('Submit!')
    expect(page).to have_content('Dog')
  end
end
