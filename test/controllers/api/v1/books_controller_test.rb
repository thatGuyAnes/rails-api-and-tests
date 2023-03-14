require 'test_helper'

class Api::V1::BooksControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  setup do
    @books_count = Book.all.length
  end

  test "Index returns all books" do
    get api_v1_books_path
    assert_response :success
    res = JSON.parse(response.body)
    assert_equal @books_count, res.length
  end
end
