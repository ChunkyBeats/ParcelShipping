require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('How the program runs via Sinatra', {:type => :feature}) do
  it('Returns the shipping costs based on parcel specs input by user') do
    visit('/')
    fill_in('parcel_height', :with => "5")
    fill_in('parcel_length', :with => "10")
    fill_in('parcel_width'. :with => "10")
    fill_in('parcel_weight', :with => "10")
    click_button('Send')
    expect(page).to have_content("60")
  end
end
