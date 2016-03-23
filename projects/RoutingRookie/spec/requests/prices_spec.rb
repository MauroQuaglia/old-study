RSpec.describe 'Prices searches' do

  it 'bad request for empty category' do
    get('/prezzi_.aspx')
    expect(response).to have_http_status(:ok)
  end

end