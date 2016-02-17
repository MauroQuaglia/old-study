class AddProductPriceInLineItems < ActiveRecord::Migration

  def up
    LineItem.all.each do |line_item|
      line_item.update_attribute(:product_price, line_item.product.price)
    end
  end

  def down
    LineItem.all.each do |line_item|
      line_item.product_price = nil
    end
  end

end
