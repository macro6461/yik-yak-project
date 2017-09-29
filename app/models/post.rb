class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, through: :user
  has_many :tags
end
