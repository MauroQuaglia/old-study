# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create!(
    title: 'CoffeeScript',
    description: %{<p> Questo libro è bellissimo! Il suo prezzo è > 0!!!</p>},
    image_url: 'cs.jpg',
    price: '49')

Product.create!(
    title: 'Programming Ruby 1.9 & 2.0',
    description: %{<p> Questo libro è bellissimo!</p>},
    image_url: 'ruby.jpg',
    price: '49.95')

Product.create!(
    title: 'Rails Test Prescription',
    description: %{<p> Questo libro è bellissimo!</p>},
    image_url: 'rtp.jpg',
    price: '50')