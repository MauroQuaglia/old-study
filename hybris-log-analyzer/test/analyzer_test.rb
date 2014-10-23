require 'test-unit'
require_relative '../analyzer'

class AnalyzerTest < Test::Unit::TestCase

  def setup
    @analyzer = Analyzer.new('ERROR')
  end

  def test_empty_log
    @analyzer.parse('')
    assert_equal('', @analyzer.report)
  end

  def test_log_with_one_error
    @analyzer.parse('ERROR  | wrapper  | main    | 2014/02/24 16:49:31.026 | This is the error!')
    assert_equal("1 - ERROR - This is the error!\n", @analyzer.report)
  end

  def test_log_with_two_errors_equal
    @analyzer.parse('ERROR  | wrapper  | main    | 2014/02/24 16:49:31.026 | This is the error!')
    @analyzer.parse('ERROR  | wrapper  | main    | 2014/02/24 16:49:31.026 | This is the error!')
    assert_equal("2 - ERROR - This is the error!\n", @analyzer.report)
  end

  def test_log_with_two_different_errors
    @analyzer.parse('ERROR  | wrapper  | main    | 2014/02/24 16:49:31.026 | This is the error 1!')
    @analyzer.parse('ERROR  | wrapper  | main    | 2014/02/24 16:49:31.026 | This is the error 2!')
    assert_equal("1 - ERROR - This is the error 1!\n1 - ERROR - This is the error 2!\n", @analyzer.report)
  end

end