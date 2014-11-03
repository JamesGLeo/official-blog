require 'csv'

# class TextbookTest < Minitest::Test
class Textbook
  attr_reader :pagesource
  def initialize(file)
    @pagesource = file
  end

#   def test_can_add_a_page
#     expected_data = page_data
#     page = Page.new(expected_data)
  

#     textbook = Textbook.new(file_as_storage)
#     textbook.insert(page)
#     expected = "Header: #{expected_data["header"]}\nTime: #{expected_data["timestamp"]}\nArticle: #{expected_data["article"]}"
#     actual = textbook.to_s
#     assert_equal(expected, actual)
#   end

  def last_entry
    last_row = CSV.read(@pagesource).last
    header, article, timestamp = row
    str = "Header: #{header}\n"
    str << "Time: #{timestamp}\n"
    str << "Article: #{article}\n"
    str.chomp    
  end
  
  def to_s
    str = ""
    CSV.read(@pagesource).each do |row|
      header, article, timestamp = row
      str << "Header: #{header}\n"
      str << "Time: #{timestamp}\n"
      str << "Article: #{article}\n"
    end
    str.chomp
  end
#   def test_shows_multiple_pages
#     skip
#     expected_data = page_data
#     second_expected_data = second_page_data
#     page = Page.new(expected_data)
#     page2 = Page.new(second_expected_data)

#     textbook = Textbook.new(file_as_storage)
#     textbook.insert(page)
#     textbook.insert(page2)

#     expected = "Header: #{expected_data["header"]}\nTime: #{expected_data["timestamp"]}\nArticle: #{expected_data["article"]}\nHeader: #{second_expected_data["header"]}\nTime: #{second_expected_data["timestamp"]}\nArticle: #{second_expected_data["article"]}"
#     actual = textbook.to_s

#     assert_equal(expected, actual)
#   end

#   def test_reads_from_an_existing_file
#     skip
#     expected_data = page_data
#     second_expected_data = second_page_data
#     page = Page.new(expected_data)
#     page2 = Page.new(second_expected_data)

#     textbook = Textbook.new(file_as_storage)
#     textbook.insert(page)
#     textbook.insert(page2)

#     textbook2 = Textbook.new(page_source)

#     expected = "Header: #{expected_data["header"]}\nTime: #{expected_data["timestamp"]}\nArticle: #{expected_data["article"]}\nHeader: #{second_expected_data["header"]}\nTime: #{second_expected_data["timestamp"]}\nArticle: #{second_expected_data["article"]}"
#     actual = textbook2.to_s

#     assert_equal(expected, actual)
#   end

# end

  # def test_writes_a_file_in_csv_format
  #   # The file in fixtures/one_entry.csv shows the expected output
  #   # Note carefully! There is an empty line at the end of the file!
  #   # Note also that in this test we are not modifying the to_s method.
  #   # The next test does that.
  #   temp_file_name = file_name
  #   page = Page.new(page_data)
  #   textbook = Textbook.new(temp_file_name)
  #   textbook.insert(page)
  #   expected = File.read('test/fixtures/one_entry.csv')
  #   actual = File.read(temp_file_name)
  #   assert_equal(expected, actual, "The file stored by the textbook should be in CSV format.")
  # end

  # def test_to_s_reads_from_csv_properly
  #   skip
  #   page = Page.new(page_data)
  #   textbook = Textbook.new(file_name)
  #   textbook.insert(page)
  #   expected = "Header: #{page.header}\nTime: #{page.timestamp}\nArticle: #{page.article}"
  #   actual = textbook.to_s
  #   assert_equal(expected, actual, "We are storing the file in CSV format, but the to_s should be human readable.")
  # end


  def to_s
    str = ""
    CSV.read(@pagesource).each do |row|
      header, article, timestamp = row
      str << "Header: #{header}\n"
      str << "Time: #{timestamp}\n"
      str << "Article: #{article}\n"
    end
    str.chomp
  end

  # def test_handles_two_entries_well
  #   skip
  #   page1 = Page.new(page_data)
  #   page2 = Page.new(second_page_data)
  #   temp_file_name = file_name
  #   textbook = Textbook.new(temp_file_name)

  #   textbook.insert(page1)
  #   textbook.insert(page2)

  #   expected = File.read('test/fixtures/two_entries.csv')
  #   actual = File.read(temp_file_name)

  #   assert_equal(expected, actual, "Two entries should be in CSV format in the file that the textbook writes to")

  #   expected = "Header: #{page1.header}\nTime: #{page1.timestamp}\nArticle: #{page1.article}\nHeader: #{page2.header}\nTime: #{page2.timestamp}\nArticle: #{page2.article}"
  #   actual = textbook.to_s

  #   assert_equal(expected, actual, "The textbook's two entries should be human-readable.")

  #   actual = Textbook.new(temp_file_name).to_s
  #   assert_equal(expected, actual, "When passing in a file that has data, the textbook should properly read all of it as a string")
  # end

def insert(page)
    CSV.open(@pagesource, 'ab') do |csv|
      csv << [page.header, page.article, page.timestamp]  
    end
  end

end