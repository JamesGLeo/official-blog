# class PageTest < Minitest::Test
class Page
  attr_accessor :header, :article, :timestamp
  def initialize(options={})
    @header = options["header"] || ""
    @article = options["article"] || ""
    @timestamp = options["timestamp"] 
  end


#   def setup
#     @page = Page.new
#   end

#   def test_begins_with_an_empty_header
#     expected = ""
#     actual = @page.header
#     assert_equal(expected, actual,"page.header must return an empty string in this test")
#   end

#   def test_has_a_regular_format_for_stringifying
#     skip
#     expected_data =
#       {
#        "header" => "The lost Pokemon",
#        "article" => "John Milton knew where it was!",
#        "timestamp" => Time.new(2014, 4, 1, 14, 47, 4)
#       }
#     @page.header = expected_data["header"]
#     @page.article = expected_data["article"]
#     @page.timestamp = expected_data["timestamp"]
#     expected = "Header: #{expected_data["header"]}\nTime: #{expected_data["timestamp"]}\nArticle: #{expected_data["article"]}"
#     actual = @page.to_s
#     assert_equal(expected, actual)
#   end

  def to_s
    "Header: #{@header}\nTime: #{@timestamp}\nArticle: #{@article}"  
  end
#   def test_can_be_passed_in_values_as_a_hash
#     skip
#     expected_data =
#       {
#        "header" => "The lost Pokemon",
#        "article" => "John Milton knew where it was!",
#        "timestamp" => Time.mktime(2014, 4, 1, 14, 47, 4)
#       }
#     page = Page.new(expected_data)

#     expected = expected_data["header"]
#     actual = page.header
#     assert_equal(expected, actual)

#     expected = expected_data["article"]
#     actual = page.article
#     assert_equal(expected, actual)

#     expected = expected_data["timestamp"]
#     actual = page.timestamp
#     assert_equal(expected, actual)
#   end

end