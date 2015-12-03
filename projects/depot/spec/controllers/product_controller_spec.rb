require 'rails_helper'

RSpec.describe ProductsController do

    before do
      #@product = products(:one)
=begin
      @update = {
              title: 'Lorem Ipsum',
              description: 'Wibbles are fun!',
              image_url: 'lorem.jpg',
              price: 19.95
      }
=end
    end

  it 'should get index' do
    get :index

    expect(response).to have_http_status(:success)
   # assert_not_nil assigns(:products)
  end

=begin
  test "should get new" do
    get :new
    assert_response :success
  end

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
