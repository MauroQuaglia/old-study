require_relative 'product'

class ProductFactory
  DUTY = 5
  RATE = 10

  def initialize
    @rate_key = ['perfume', 'music']
    @duty_key = ['imported']
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
    description = values[0]
    description.slice!('1 ')
    description
  end

  def price(values)
    values[1].to_f
  end

  def taxes(tokens)
     add_tax(tokens, @rate_key, RATE) + add_tax(tokens, @duty_key, DUTY)
  end

  def add_tax(tokens, keys, rate)
    tokens.each{|token| return rate if keys.include? token}
    return 0
  end

end
