atom_feed do |feed|
  feed.title("Who bought #{@product.title}")
  feed.updated(@latest_order.try(:updated_at))
end