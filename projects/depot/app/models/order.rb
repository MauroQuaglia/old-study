=begin
create_table "orders", force: :cascade do |t|
  t.string   "name"
  t.text     "address"
  t.string   "email"
  t.string   "pay_type"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end
=end

class Order < ActiveRecord::Base
  PAYMENT_TYPES = ['Check', 'Credit Card', 'Purchase Order']
  has_many(:line_items, dependent: :destroy)
  validates(:name, :address, :email, presence: true)
  validates(:pay_type, inclusion: PAYMENT_TYPES)

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item # questi line_item sono quelli dell'Order!
    end
  end

end
