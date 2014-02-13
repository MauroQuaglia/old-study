require 'test-unit'
require_relative '../shopper'

class ShopperTest < Test::Unit::TestCase

  def test_one_good
    shopping_list='1 book at 12.49'

    shopper=Shopper.new(shopping_list)

    assert_equal 1, shopper.goods.length
    assert_equal '1 book at 12.49', shopper.goods[0]
  end

  def test_two_goods
    shopping_list="1 book at 12.49\n1 imported box of chocolates at 10.00"

    shopper=Shopper.new(shopping_list)

    assert_equal 2, shopper.goods.length
    assert_equal '1 book at 12.49', shopper.goods[0]
    assert_equal '1 imported box of chocolates at 10.00', shopper.goods[1]
  end

end
