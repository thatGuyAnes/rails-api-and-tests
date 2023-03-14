class Api::V1::BooksController < ActionController::API

  def index
    @books = Book.all.map { |b| b.to_j }
    render json: @books, status: :ok
  end

end
