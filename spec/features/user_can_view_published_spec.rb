require 'rails_helper'

RSpec.describe "User can see published posts", type: :feature do
  scenario "they select a button to view published posts " do
    post = create(:post, title: "Draft", status: 0)
    post = create(:post, title: "Publish", status: 1)
    
    visit root_path
    click_button "View Drafts"
    
    expect(page).to have_content("Draft")
    expect(page).to have_content("My body")
    expect(page).to have_content("My author")
    expect(page).to have_button("View Published Posts")
    
    click_button "View Published Posts"
    expect(page).to have_content("Publish")
    expect(page).to have_content("My body")
    expect(page).to have_content("My author")
  end
end