class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update]

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
    # if @user.id == current_user
    #   render "edit"
    # else
    #   redirect_to user_path(@user)
    # end
  end

  def update
    @user = User.find(params[:id]) #ユーザーの取得
    if @user.update(user_params) #ユーザーのアップデート
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user) #ユーザーの詳細ページへのパス
    else
      render("users/edit")
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

  def correct_user
    @user = User.find(params[:id])
    @books = @user.books
    redirect_to(current_user) unless @user == current_user
  end

end
