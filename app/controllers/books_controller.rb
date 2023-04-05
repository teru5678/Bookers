class BooksController < ApplicationController
  def new
  end

  def index
   @book = Book.new
   @book = Book.all
   @book = Book.order(params[:id])
  end
  
  def show
   @book = Book.find(params[:id])
  end
  
  def create
   @book = Book.new(book_params)
   if @book.save
    flash[:notice] = "Book was successfully created."
    redirect_to book_path(@book)
   else
    render :new
   end
  end

  def edit
   @book = Book.find(params[:id])
  end
  
  def update
   @book = Book.find(params[:id])
   @book.update(book_params)
   flash[:notice] = "Book was successfully created."
   redirect_to book_path(@book)
  end
  
  def destroy
   @book = Book.find(params[:id])
   @book.destroy
   flash[:notice] = "Book was successfully created."
   redirect_to books_path(@book)
  end
  
  private
  def book_params
   params.require(:book).permit(:title, :body)
  end
end
