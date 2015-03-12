require_relative 'csv_reader'

reader = CsvReader.new
ARGV.each do |file|
  reader.read_in_csv_data(file)
end
puts reader.total_value_in_stock

