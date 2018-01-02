class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :tags

  validates :content, presence: true
  validates :content, length: {maximum: 200}
end
