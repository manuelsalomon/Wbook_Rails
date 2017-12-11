class BooksController < ApplicationController
  skip_before_action :authorize_request, only: %i[index show]

  def index
    books = Book.all
    render json: books, status: :ok
  end

  def show
    book = Book.find(params[:id])
    render json: book, status: :ok
  end

  def create
    book = Book.create!(create_params)
    render json: book, status: :created
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    head :no_content
  end

  private

  def create_params
    params.require(:book).permit(%i[title author year genre publisher image_url])
  end
end
