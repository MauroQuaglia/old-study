class Product

  def initialize(category, description, price)
    @tax = 0
    @category = category
    @description = description
    @price = price
  end

  def taxes
   @tax + @category.tax
  end

  def to_s
    "1 #{@description} : #{@price}"
  end
end