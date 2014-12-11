require 'test-unit'
require_relative 'csv_reader'

class CsvReaderTest < Test::Unit::TestCase

  def test_1
    reader = CsvReader.new
    reader.read_in_csv_data('file1.csv')
    reader.read_in_csv_data('file2.csv')
    puts "Total value in stock: #{reader.total_value_in_stock}"
  end
end