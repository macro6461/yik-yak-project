class Api::V1::TagsController < ApplicationController
  def index
    @tags = Tag.all
    render json: @tags, status: 200
  end

  def create
    @tag = Tag.create(tag_params)
    render json: @tag, status: 201
  end

  private
  def tag_params
    params.permit(:body)
  end
end
