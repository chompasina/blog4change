require 'rails_helper'

RSpec.describe "User can comment on a post", type: :feature do
  scenario "they comment on a post" do
    post = create(:post, status: 1)
    visit root_path
    
    click_button "Comment"
  end
end