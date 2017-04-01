class BooksController < ApplicationController
  def index 
    @books = Book.all
  end
  
  def new
  end
  
  def create
    @books = Book.new
    @books.title = params[:title]
    @books.description = params[:description]
    @books.pages = params[:pages]
    @books.author_id = params[:author_id]
    @books.amazon_url = params[:amazon_url]
    @books.picture_url = params[:picture_url]
    @books.save
    
    redirect_to '/books'
  end
  
  def edit
    @book = Book.find params[:id]
  end

  def update 
    @books = Books.find
    @books.title = params[:title]
    @books.description = params[:description]
    @books.pages = params[:pages]
    @books.author_id = params[:author_id]
    @books.amazon_url = params[:amazon_url]
    @books.picture_url = params[:picture_url]
    @books.save
    
    redirect_to '/books/new'
  end
  
  def show
    @book = Book.find params[:id]
  end
  
end
