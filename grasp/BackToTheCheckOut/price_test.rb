require 'test-unit'
require_relative 'check_out'

class PriceTest < Test::Unit::TestCase

  def price(goods)
    rules={
        'AAA' => 130,
        'A' => 50,
        'B' => 30,
        'C' => 20,
        'D' => 15
    }

    co = CheckOut.new(rules)
    goods.split(//).each { |item| co.scan(item) }
    co.total
  end

  def test_totals_1
    assert_equal(0, price(''))
    assert_equal(50, price('A'))
    assert_equal(80, price('AB'))
    assert_equal(115, price('CDBA'))
  end

  def test_totals_2
    assert_equal(100, price("AA"))
    assert_equal(130, price("AAA"))
    #assert_equal(180, price("AAAA"))
    #assert_equal(230, price("AAAAA"))
    #assert_equal(260, price("AAAAAA"))
    #
    #assert_equal(160, price("AAAB"))
    #assert_equal(175, price("AAABB"))
    #assert_equal(190, price("AAABBD"))
    #assert_equal(190, price("DABABA"))
  end
end