class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  def add_product(product_id)
    item = line_items.find_by(product_id: product_id)

    item.nil? ? line_items.create(product) : item.update(:quantity)
  end

  # #<LineItem
  # id: 3,
  #     product_id: 68, --> questo è quello che devo cercare.
  #     cart_id: 1,  questo ce l'ho da fuori, è lui
  #     created_at: "2016-01-27 13:57:37",
  #     updated_at: "2016-01-27 13:57:37",
  #     quantity: 1
  # >
end
