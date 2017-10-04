class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users, status: 200
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: 200, include: [:posts]
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: 201
    else
      raise "Username is already taken, please choose a new username."
    end
  end

  private
  def user_params
    params.permit(:name, :username, :email)
  end
end
