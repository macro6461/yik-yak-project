class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, presence: true;
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, presence: true
end
