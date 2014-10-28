require 'test/unit'
require_relative '../log_reader'

class LogReaderTest < Test::Unit::TestCase

  def test_read_log_correctly
     analyzer = LogReader.new('ERROR').parse('./data')

     assert_true analyzer.report.include?('Error 1')
  end

  def test_read_logs_correctly
    analyzer = LogReader.new('ERROR').parse('./data')

    assert_true analyzer.report.include?('Error 1')
    assert_true analyzer.report.include?('Error 2')
  end

end