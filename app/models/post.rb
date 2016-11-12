class Post < ApplicationRecord
  has_many :comments
  validates :author, presence: true
  validates :body, presence: true
  validates :title, presence: true
  validates :status, presence: true
  enum status: %w(draft published)
end
