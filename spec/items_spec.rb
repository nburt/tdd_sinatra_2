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

    click_link 'Add a Task'
    fill_in 'task_to_add', with: 'Go to grocery store'
    click_on 'Add Task'
    expect(page).to have_content 'Go to grocery store'

    click_link 'Show Task'
    within 'h1' do
      expect(page).to have_content 'Go to grocery store'
    end
  end

end