require_relative 'log_reader'

analyzer = LogReader.new(ARGV[0]).parse(ARGV[1])
puts analyzer.report
