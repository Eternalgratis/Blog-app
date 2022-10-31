class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.create(params[:id])
  end
end
