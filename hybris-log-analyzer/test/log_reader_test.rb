require 'test/unit'
require_relative '../log_reader'

class LogReaderTest < Test::Unit::TestCase

  def test_read_log_correctly
     analyzer = LogReader.new('ERROR').parse('./test.log')

     assert_not_empty(analyzer.report)
  end

end