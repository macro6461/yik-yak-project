class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_many :tags

  validates :content, presence: true
  validates :content, length: { maximum: 200 }

end
