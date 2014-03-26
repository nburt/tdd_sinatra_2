require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature 'manage items' do

  scenario 'user can add items' do

    visit '/'
    within 'h1' do
      expect(page).to have_content 'Welcome'
    end
  end

end