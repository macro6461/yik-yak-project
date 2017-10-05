class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :post_id, :content, :username
  belongs_to :user
  belongs_to :post

  def username
    object.user.username
  end
end
