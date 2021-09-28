# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Author', with: 'J.K. Rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('J.K. Rowling')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter 3'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '20'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('20')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter 4'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '20'
    fill_in 'Published Date', with: 'oct 2, 2011'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('oct 2, 2011')
  end
end
