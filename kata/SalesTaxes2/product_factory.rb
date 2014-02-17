require_relative 'product'

class ProductFactory

  def initialize
    @rate = 10; @rate_key = ['perfume', 'music']
    @duty = 5; @duty_key = ['imported']
  end

  def create good
    values = good.split(' at ')
    description = values[0]
    price = values[1].to_f
    Product.new(description, price, taxes(description))
  end

  private

  def taxes(description)
    tokens = description.downcase.split(' ')
    tax(tokens, @rate_key, @rate) + tax(tokens, @duty_key, @duty)
  end

  def tax(tokens, keys, rate)
    tokens.each { |token| return rate if keys.include? token }; 0
  end

end
