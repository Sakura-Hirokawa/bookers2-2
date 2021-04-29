class BooksController < ApplicationController
  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
  end

  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def show
    @user = @book.user
    @book_new = Book.new
    @book = Book.find(params[:id])
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
