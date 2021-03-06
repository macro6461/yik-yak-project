class Api::V1::PostsController < ApplicationController
  def index
    @posts = Post.all
    render json: @posts, status: 200
  end

  def show
    @post = Post.find(params[:id])
    render json: @post, status: 200, include: [:user]
  end

  def create
    @post = Post.create(post_params)
    render json: @post, status: 201
  end

  private
  def post_params
    params.permit(:content, :user_id)
  end
end
