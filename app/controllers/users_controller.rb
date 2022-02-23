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
    if @user == current_user
      render :edit
    else
      redirect_to user_path(current_user.id)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction)
  end
end
