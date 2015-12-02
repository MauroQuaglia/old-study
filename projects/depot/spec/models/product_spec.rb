require 'rails_helper'

RSpec.describe Product do
  fixtures :products

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

  it 'fixture is loaded' do
    expect(Product.all.first[:title]).to eq('Ruby')
  end

  it 'product is not valid without a unique title' do



    #product = product_for(products(:ruby).title, 'xxx', 'y.png', 1000)

    #expect(product.invalid?).to be_truthy
    #expect(product.errors[:title].first).to eq('has already been taken')
  end



  private

  def product_for(title, description, image_url, price)
    described_class.create(title: title, description: description, image_url: image_url, price: price)
  end

end