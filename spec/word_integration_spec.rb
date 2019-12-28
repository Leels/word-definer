require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create a word path', {:type => :feature}) do
  it('creates a word and then goes to the word page') do
    visit('/words')
    click_on('Add New Word')
    fill_in('word_name', :with => 'Abc')
    click_on('Go!')
    expect(page).to have_content('Abc')
  end
end

describe('create a definition path', {:type => :feature}) do
  it('creates a word and then goes to the word page') do
    word = Album.new("Abc", nil, "img")
    word.save
    visit("/words/#{word.id}")
    fill_in('definition_definition', :with => 'Blah blah')
    click_on('Add Definition')
    expect(page).to have_content('Blah blah')
  end
end