require 'rails_helper'

RSpec.describe "User can publish a post", type: :feature do
  scenario "they can select publish" do
    visit new_post_path
    
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
    
    fill_in "Author", with: "Secret"
    fill_in "Title", with: "My hidden post"
    fill_in "Body", with: "Shh Yada yada yada"
    # do not select publish
    
    click_button "Create Post"
    
    expect(current_path).to eq(root_path)
    expect(page).to_not have_content ("Secret")
    expect(page).to_not have_content ("My hidden post")
    expect(page).to_not have_content ("Shh Yada yada yada")
  end
end