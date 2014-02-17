require 'test-unit'
require_relative '../supermarket'
require_relative '../shopper'

class AcceptanceTest < Test::Unit::TestCase

  def setup
    @supermarket = Supermarket.new
  end

  def test_acceptance_1
    shopping_list="1 book at 12.49\n1 music CD at 14.99\n1 chocolate bar at 0.85\n"

    shopper=Shopper.new(shopping_list)
    @supermarket.checkout(shopper)

    assert_equal "1 book: 12.49\n1 music CD: 16.49\n1 chocolate bar: 0.85\nSales Taxes: 1.50\nTotal: 29.83\n", @supermarket.receipt
  end

  def test_acceptance_2
    shopping_list="1 imported box of chocolates at 10.00\n1 imported bottle of perfume at 47.50\n"

    shopper=Shopper.new(shopping_list)
    @supermarket.checkout(shopper)

    assert_equal "1 imported box of chocolates: 10.50\n1 imported bottle of perfume: 54.65\nSales Taxes: 7.65\nTotal: 65.15\n", @supermarket.receipt
  end

  def test_acceptance_3
    shopping_list="1 imported bottle of perfume at 27.99\n1 bottle of perfume at 18.99\n1 packet of headache pills at 9.75\n1 box of imported chocolates at 11.25\n"

    shopper=Shopper.new(shopping_list)
    @supermarket.checkout(shopper)

    assert_equal "1 imported bottle of perfume: 32.19\n1 bottle of perfume: 20.89\n1 packet of headache pills: 9.75\n1 imported box of chocolates: 11.85\nSales Taxes: 6.70\nTotal: 74.68\n", @supermarket.receipt
  end

end
