require 'test-unit'
require_relative '../analyzer'

class AnalyzerTest < Test::Unit::TestCase

  def test_empty_log
    assert_false(Analyzer.new.has_errors?('/home/xpuser/studio/mauro-quaglia/studio/hybris-log-analyzer/test/data/empty.log'))
  end

  def test_log_with_error
    assert_true(Analyzer.new.has_errors?('/home/xpuser/studio/mauro-quaglia/studio/hybris-log-analyzer/test/data/with_error.log'))
  end

end