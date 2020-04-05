class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
    #特定のユーザーの情報を表示する
  	render template: 'books/new'
    #新規投稿をする
  	render template: 'books/index'
    #投稿の一覧表示をする
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

  private
  def user_params
  	params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
