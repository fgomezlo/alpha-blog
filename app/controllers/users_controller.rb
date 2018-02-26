class UsersController < ApplicationController

  before_action :set_article, only: [:edit, :show, :update, :destroy]
  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def edit

  end

  def show

  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = "Welcome to the alpha blog #{@user.username}"
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def update

    if @user.update user_params
      flash[:success] = "User was successfully updated"
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  private
    def set_article
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :email, :password)
    end

end
