class LineItem < ActiveRecord::Base
  belongs_to :product # Da LineItem posso risalire al Product.
  belongs_to :cart    # Da LineItem posso risalire al Cart.
end
