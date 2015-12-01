require 'rails_helper'

RSpec.describe Product do

  it 'attributes must be not empty' do
    product = described_class.create

    expect(product.invalid?).to be_truthy
    expect(product.errors[:title].any?)
    expect(product.errors[:description].any?)
    expect(product.errors[:price].any?)
    expect(product.errors[:image_url].any?)
  end

  it 'price must be positive' do
    product = product_for('My title', 'My description', 'my-image-url.png', -1)
    expect(product.errors[:price].first).to eq('must be greater than or equal to 0.01')

    product = product_for('My title', 'My description', 'my-image-url.png', 0)
    expect(product.errors[:price].first).to eq('must be greater than or equal to 0.01')

    product = product_for('My title', 'My description', 'my-image-url.png', 1)
    expect(product.valid?).to be_truthy
  end

  it 'image url' do
    product = product_for('My title', 'My description', 'my-image-url.gif', 1)
    expect(product.valid?).to be_truthy

    product = product_for('My title', 'My description', 'my-image-url.doc', 1)
    expect(product.invalid?).to be_truthy
  end

  private

  def product_for(title, description, image_url, price)
    described_class.create(title: title, description: description, image_url: image_url, price: price)
  end

end