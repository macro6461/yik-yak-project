class Api::V1::SessionsController < ApplicationController
# skip_before_action :signin_required, :only => [:signin, :create]

  def signin
    @user = User.new
  end

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def create
    user = User.find_or_create_by(user_params[:username])
    if user
        session[:user_id] = user.id
    end
  end

  def signout
    session[:user_id] = nil
  end
end
