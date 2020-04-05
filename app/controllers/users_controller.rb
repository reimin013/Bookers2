class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
    #特定のユーザーの情報を表示する
  	@book = Book.new
    #新規投稿をする
  	@books = Book.where(user_id: params[:id])
    #投稿の一覧表示をする, find はとってくるデータが1つだけの時に使う
  end

  def index
    @book = Book.new
    @user = current_user
  	@users = User.all
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	@user.update(user_params)
  	redirect_to user_path(@user)
  end

  private
  def user_params
  	params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
