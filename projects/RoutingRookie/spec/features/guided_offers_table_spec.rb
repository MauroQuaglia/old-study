require 'rails_helper'

RSpec.feature 'GuidedOffersTable', :driver => :webkit do

  it 'invalid route' do
    assert_status_code_online('/prezzi_.aspx', 400)
    assert_status_code_local('/prezzi_.aspx', 400)
  end

  it 'invalid parameter category' do
    assert_status_code_online('/prezzi_all.aspx', 200)
    assert_status_code_local('/prezzi_all.aspx', 200)

    assert_status_code_online('/prezzi_telefonia.aspx', 200)
    assert_status_code_local('/prezzi_telefonia.aspx', 200)

    assert_status_code_online('/prezzi_inesistente.aspx', 404)
    assert_status_code_local('/prezzi_inesistente.aspx', 404)
  end

  it 'correct url' do
    assert_status_code_online('/prezzi_cellulari.aspx', 200)
    assert_status_code_local('/prezzi_cellulari.aspx', 200)
  end

  it 'correct guided' do
    assert_status_code_online('/prezzi_accessori-cellulari.aspx', 200)
    assert_status_code_local('/prezzi_accessori-cellulari.aspx', 200)
  end

  it 'listing' do
    assert_status_code_online('/prezzi_accessori-fotografia.aspx', 200)
    assert_status_code_local('/prezzi_accessori-fotografia.aspx', 200)   # 301, 302 SIDONIO?
  end

  private

  def assert_status_code_online(url, status_code)
    visit('http://www.trovaprezzi.it' + url)
    expect(page.status_code).to eq(status_code)
  end

  def assert_status_code_local(url, status_code)
    visit(url)
    expect(page.status_code).to eq(status_code)
  end

end