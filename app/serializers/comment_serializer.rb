class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :post_id, :content
  belongs_to :post
end