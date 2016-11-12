require 'rails_helper'

RSpec.describe "User can publish a post", type: :feature do
  scenario "they can select publish" do
    # post = create(:post, status: 0)
    visit new_post_path
    
    # expect(page).to have_selector('input', :type => 'checkbox')
    fill_in "Author", with: "Tommasina"
    fill_in "Title", with: "My wonderful post"
    fill_in "Body", with: "Yada yada yada"
    check "status"
    
    click_button "Create Post"
    
    expect(page).to have_content ("Tommasina")
    expect(page).to have_content ("My wonderful post")
    expect(page).to have_content ("Yada yada yada")
    expect(current_path).to eq(root_path)
  end
  
  scenario "they do not select publish so cannot see post on home page" do
    visit new_post_path
    
    # expect(page).to have_selector('input', :type => 'checkbox')
    fill_in "Author", with: "Tommasina"
    fill_in "Title", with: "My wonderful post"
    fill_in "Body", with: "Yada yada yada"
    # do not select publish
    
    
    click_button "Create Post"
  end
end