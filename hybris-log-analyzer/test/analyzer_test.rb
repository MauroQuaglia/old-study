require 'test-unit'
require_relative '../analyzer'

class AnalyzerTest < Test::Unit::TestCase

  def setup
    @analyzer = Analyzer.new('ERROR')
  end

  def test_parse_empty_log
    @analyzer.parse('')
    assert_false(@analyzer.has_errors?)
  end

  def test_parse_log_with_error
    @analyzer.parse('ERROR  | wrapper  | main    | 2014/02/24 16:49:31.026 | JVM did not exit on request, terminated')
    assert_true(@analyzer.has_errors?)
  end

  def test_report_error
    @analyzer.parse('ERROR  | wrapper  | main    | 2014/02/24 16:49:31.026 | JVM did not exit on request, terminated')
    assert_equal('1 - ERROR - JVM did not exit on request, terminated', @analyzer.report)
  end

  def test_report_errors
    @analyzer.parse('ERROR  | wrapper  | main    | 2014/02/24 16:49:31.026 | JVM did not exit on request, terminated')
    @analyzer.parse('ERROR  | wrapper  | main    | 2014/02/24 16:49:31.026 | JVM did not exit on request, terminated')
    assert_equal('2 - ERROR - JVM did not exit on request, terminated', @analyzer.report)
  end


end