# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

LineItem.delete_all
Cart.delete_all
Product.delete_all

product1 = Product.create!(
    title: 'CoffeeScript',
    description: %{<p> Questo libro è bellissimo! Il suo prezzo è > 0!!!</p>},
    image_url: 'cs.jpg',
    price: '4900.70')

product2 = Product.create!(
    title: 'Programming Ruby 1.9 & 2.0',
    description: %{<p> Questo libro è bellissimo!</p>},
    image_url: 'ruby.jpg',
    price: '49.95')

Product.create!(
    title: 'Rails Test Prescription',
    description: %{<p> Questo libro è bellissimo!</p>},
    image_url: 'rtp.jpg',
    price: '50')

cart1 = Cart.create!
cart2 = Cart.create!

LineItem.create!(product_id: product1.id, cart_id: cart1.id, quantity: 1, product_price: product1.price)
LineItem.create!(product_id: product2.id, cart_id: cart2.id, quantity: 1, product_price: product2.price)