require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "model validations " do
    it "requires a name, all the time" do
      book = Book.new

      expect(book).to_not be_valid
      expect(book.errors.keys).to include(:name)
      # testing that it's failing b/c title is required
    end
  end
end