class UsersController < ApplicationController
  def index
    @books = Book.new
    @user = current_user
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
  end
end
