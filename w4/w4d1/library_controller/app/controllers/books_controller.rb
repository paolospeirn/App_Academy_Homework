class BooksController < ApplicationController
  def index
   # don't need this?
  end

  def new
    render :new
  end

  def create
    book = Book.new(book_params)
    if book.save
      redirect_to books_url
    else
      flash.now[:errors] = books.errors.full_messages
      render :new
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to book_url
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
