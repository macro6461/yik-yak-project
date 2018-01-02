class Api::V1::CommentsController < ApplicationController


  def index
    @comments = Comment.all
    render json: @comments, status: 200
  end

  def show
    @comment = Comment.find(params[:id])
    render json: @comment, status: 200
  end

  def create
    byebug
    @comment = Comment.create!(user_id: params["user_id"], post_id: params["post_id"], content: params["content"])
    render json: @comment, status: 201
  end

  private
  def comment_params
    params.require(:comment).permit(:user_id, :post_id, :content)
  end
end
