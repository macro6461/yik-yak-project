class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :content
  belongs_to :user
  has_many :comments

end
