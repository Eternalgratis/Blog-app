class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show;
    #  @user = User.create(params[:id])
  end
end
