require 'rails_helper'

RSpec.describe ProductsController do
  fixtures :products
  #https://www.relishapp.com/rspec/rspec-rails/docs/controller-specs

  before do
    @product = products(:one)
    @update = {
        title: 'Lorem Ipsum',
        description: 'Wibbles are fun!',
        image_url: 'lorem.jpg',
        price: 19.95
    }
  end

  it 'should get index' do
    get :index

    expect(response).to have_http_status(:success)
    expect(assigns(:products)).not_to be_nil
  end

  it 'should get new' do
    get :new

    expect(response).to have_http_status(:success)
  end

  it 'should create product' do
    # Dato che è una post gli posso passare una hash con i valori, quelli che recupererebbe dalla form.
    # Product.count è di ActiveRecord e guarda quanti elementi ci sono nella fixture.
    expect { post :create, product: @update }.to change { Product.count }.from(3).to(4)
  end

  it 'redirect when product was created' do
    post :create, product: @update

    expect(response).to redirect_to(product_path(assigns(:product)))
  end


  it 'should show product' do
    get :show, id: @product

    expect(response).to have_http_status(:success)
  end

  it 'should get edit' do
    get :edit, id: @product

    expect(response).to have_http_status(:success)
  end

  it 'should update product' do
    patch :update, id: @product, product: @update

    expect(response).to redirect_to(product_path(assigns(:product)))
  end

  it 'should destroy product' do
    expect { delete :destroy, id: @product }.to change { Product.count }.from(3).to(2)
  end

end
