require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'
Capybara.app = App

feature 'managing product list' do
  scenario 'adding tasks to list' do
    visit('/')
    expect(page).to have_content "Welcome"
    click_on ('Add a Product')

  end
end