class BooksController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_book, only: %i[ show edit update destroy ]


  def index
    @books = Book.all
  end

 
  def show
  end

 
  def new
    @book = Book.new
    @book.build_author
    @book.build_publisher
  end

  
  def edit
  end

 
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: "Book was successfully created." }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @book.update(book_params)
    redirect_to @book
  end
 
  def destroy
    @book.destroy
    redirect_to books_path
  end

  def search
    if params[:title].blank?
      redirect_to request.referrer
    else
      @title = params[:title].downcase
      @books = Book.where("lower(title) LIKE ?", "%#{@title}%")
    end
  end

  private
    
    def set_book
      @book = Book.find(params[:id])
    end

    def set_categories
      @categories = Category.all
    end

    def book_params
      params.require(:book).permit(:title, :description, :edition, :pages, :publication_date, :format, :author_id, :publisher_id, :category_id, author_attributes: [:name], publisher_attributes: [:name])
    end
end
