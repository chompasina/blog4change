require 'rails_helper'

RSpec.feature "User can create a post", type: :feature do
  scenario "they visit the root" do    
    visit root_path
    click_link "Create new post"
    expect(page).to have_content("Author")
    expect(page).to have_content("Body")
    expect(page).to have_content("Title")
    expect(page).to have_button("Create Post")
    
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
end