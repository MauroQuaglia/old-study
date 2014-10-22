require 'test/unit'
require_relative '../log_reader'

class LogReaderTest < Test::Unit::TestCase

  def test_read_log_correctly
     file = File.join(Dir.pwd, '/data/test.log')
     analyzer = LogReader.new.parse(file)
     assert_true(analyzer.has_errors?)
  end

end