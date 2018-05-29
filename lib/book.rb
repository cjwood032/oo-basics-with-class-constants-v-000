class Book
  attr_accessor :author, :page_count, :genre
  attr_reader :title

  def initialize(title)
    @title = title
  end
  GENRES = []
  describe 'GENRES' do
  it 'keeps track of all genres' do
    genres = ["Thriller", "Science Fiction", "Romance"]
    genres.each_with_index do |genre, i|
      book = Book.new("Book_#{i}")
      book.genre = genre
    end
 
    genres.each do |genre|
      expect(Book::GENRES).to include(genre)
    end
  end
end
  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

end