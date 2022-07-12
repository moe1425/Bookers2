class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.find(params[:id])
  end

  def index
    @users = User.all
  end

  def edit
    # @users = @user = User.find(params[:id])
  end

end
