require 'test_helper'

class BookTest < ActiveSupport::TestCase

  setup do
    @book = books :one
  end

  test "to_j method doesn't return created_at or updated_at" do
    jsonified = @book.to_j
    assert_not jsonified.include? "created_at"
    assert_not jsonified.include? "updated_at"
  end


end
