class BooksController < ApplicationController
  def index
  end

  def show
  	@user = User.find(params[:id])
  	@book = Book.find(params[:id])
  end

  def create
  	book = Book.new(book_params)
  	book.save
  	redirect_to book_path(book.id)
  	# redirect_to user_path(resource.id)
  end

  def edit
  end

  private
  def book_params
   params.require(:book).permit(:title, :body)
  end
end
