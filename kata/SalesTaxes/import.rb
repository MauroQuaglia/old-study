class Import

  def initialize(product)
    @product = product
    @rate = 5
  end

  def description
    @product.description
  end

  def price
    @product.price
  end

  def cost
    @product.cost + duty
  end

  def taxes
    @product.taxes + duty
  end

  private

  def duty
    @product.price * @rate / 100
  end

end