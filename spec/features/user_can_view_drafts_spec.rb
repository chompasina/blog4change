require 'rails_helper'

RSpec.describe "User can see drafts", type: :feature do
  scenario "they select a button to view drafts " do
    post = create(:post, status: 0)
    
    visit root_path
    click_button "View Drafts"
    
    expect(page).to have_content("Title_1")
    expect(page).to have_content("My body")
    expect(page).to have_content("My author")
    expect(page).to have_button("View Published Posts")
  end
end