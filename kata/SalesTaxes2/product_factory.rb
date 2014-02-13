require_relative 'product'
require_relative 'import'

class ProductFactory
  DUTY = 5

  def initialize
    @rate = Hash.new
    @rate['book'] = 0
    @rate['imported book'] = 5
    @rate['bottle of perfume'] = 10
    @rate['imported bottle of perfume'] = 15
  end

  def create good
    values = good.split(' at ')

    type = values[0]
    type.slice! '1'
    type = type.gsub(/\s+/, ' ').strip

    price = values[1].to_f

    Product.new(type, price, @rate[type])

  end

end

