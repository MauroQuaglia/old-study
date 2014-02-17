require_relative 'product'

class ProductFactory

  def initialize
    @rate = 10; @rate_key = ['perfume', 'music']
    @duty = 5; @duty_key = ['imported']
  end

  def create good
    values = good.split(' at ')

    description = description(values)
    price = price(values)
    tax = taxes(description.split(' '))

    Product.new(description, price, tax)
  end

  private

  def description(values)
    values[0]
  end

  def price(values)
    values[1].to_f
  end

  def taxes(tokens)
    tax(tokens, @rate_key, @rate) + tax(tokens, @duty_key, @duty)
  end

  def tax(tokens, keys, rate)
    tokens.each { |token| return rate if keys.include? token }; 0
  end

end
