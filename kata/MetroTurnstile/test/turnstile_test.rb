require 'test-unit'
require 'set'
require_relative '../turnstile'


class TurnstileTest < Test::Unit::TestCase

  def test_valid_subscriptions
  assert_true Turnstile.new('SINGOLA CORSA').is_valid?
  assert_true Turnstile.new('ABBONAMENTO').is_valid?
  assert_true Turnstile.new('GIORNALIERO').is_valid?
  assert_true Turnstile.new('SETTIMANALE').is_valid?
  assert_true Turnstile.new('MENSILE').is_valid?
  end

  def test_invalid_subscription
    assert_false Turnstile.new('INVALID').is_valid?
  end

  def test_xxx

  end

end