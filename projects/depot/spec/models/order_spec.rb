require 'rails_helper'

RSpec.describe Order do

  it 'xxx' do
     # Creo ordine senza creare una variabile in memoria.
    Order.new do |o|
      o.name = 'dave'
      o.address = 'via'
      o.save!
    end

    it 'yyy' do
      order = Order.new(name: 'mauro', email: 'ddd')
      #puts "Ecco: #{order.id}"
      order.save
      puts "Ecco: #{order.id}"
    end

  end


end