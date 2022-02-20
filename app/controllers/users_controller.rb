class UsersController < ApplicationController
  def index
    @books = Book.new
    @user = current_user
    @users = User.all
  end

  def show
    @books = Book.new
    @user = User.find(params[:id])
    @book = @user.books.page(params[:page]).reverse_order
  end

  def edit
  end

  def update
  end
end
