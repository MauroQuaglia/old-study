require 'rails_helper'

RSpec.describe ProductsController do

  #https://www.relishapp.com/rspec/rspec-rails/docs/controller-specs

  before do
    #@product = products(:one)
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
    # Product.count è di ActiveRecord e vale inizialmente 1 perché un valore è nella fixture.
    expect { post :create, product: @update }.to change { Product.count }.from(3).to(4)
    #expect(response).to redirect_to(location)
    #expect { post :create, product: @update }.to redirect_to(product_path(assigns(:product)))
  end


=begin

  test "should create product" do
    # Falliva perché usa il products.yml come database.
    # Quindi ora che gli ho messo la validazione non posso usare :one per creare un altro prodotto perché lo vede già nel db.
    assert_difference('Product.count') do
      post :create, product: @update
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: @update
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', 1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
=end
end
