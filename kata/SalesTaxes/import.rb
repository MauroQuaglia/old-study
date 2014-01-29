class Import
  # forse si può usare il delegate per chiamare la base

  def initialize(product)
    @product = product
    @rate = 5
  end

  def cost
    @product.cost + (@product.price * @rate) / 100
  end

  def taxes
    @product.taxes + (@product.price * @rate) / 100
  end

  def to_s
    @product.to_s
  end


end