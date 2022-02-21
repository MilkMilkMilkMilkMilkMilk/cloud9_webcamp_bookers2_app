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
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction)
  end
end
