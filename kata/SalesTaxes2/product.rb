class Product
  attr_reader :price

  def initialize(description, price, rate)
    @description = description
    @price = price
    @rate = rate
  end

  def description
    key = 'imported'
    @description.downcase!

    if @description.include? key
      return @description.gsub(key, ' ').split(' ').insert(1, key).join(' ')
    end
    @description
  end

  def taxes
    @price * @rate * 0.01
  end

end
