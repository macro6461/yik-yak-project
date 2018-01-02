class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_many :tags

  validates :content, length: { miximum: 200 }

end
