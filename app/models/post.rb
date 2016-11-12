class Post < ApplicationRecord
  has_many :comments
  validates :author, presence: true
  validates :body, presence: true
  validates :title, presence: true
  enum status: [:draft, :published]
end
