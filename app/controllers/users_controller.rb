class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@book = Book.new
  	@books = Book.all
  end

  def index
  	@users = User.all
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	user = User.find(paramas[:id])
  	user.update(user_params)
  	redirect_to user_path(user.id)
  end

  protected
  def user_params
  	params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
