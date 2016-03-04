class LineItem < ActiveRecord::Base
  belongs_to(:order)
  belongs_to :product # Da LineItem posso risalire al Product.
  belongs_to :cart # Da LineItem posso risalire al Cart.

  def total_price
    product.price * quantity
  end
end
