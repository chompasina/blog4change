require 'rails_helper'

RSpec.describe Post, type: :model do
  it { should have_many :comments}
  it { should validate_presence_of :author}
  it { should validate_presence_of :body}
  it { should validate_presence_of :title}


  it "has a default status" do
    post = Post.create!(author: "author", body: "body", title: "title")
    # expect(post.status).to eq("draft")
  end
end