require 'rails_helper'

RSpec.describe Post, type: :model do
  it { should have_many :comments}
  it { should validate_presence_of :author}
  it { should validate_presence_of :body}
  it { should validate_presence_of :title}
  it { should validate_presence_of :status}


  it "has a default status" do
    post = Post.new
    expect(post.status).to eq(0)
  end
end