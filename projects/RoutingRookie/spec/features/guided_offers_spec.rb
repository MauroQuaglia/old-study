require 'rails_helper'

RSpec.feature 'GuidedOffers' do

  it 'prezzi listing response online', :driver => :webkit  do
    # parametri mancanti
    assert_status_code_online('/prezzi__.aspx', 400)
    assert_status_code_online('/prezzi_cellulari_.aspx', 400)
    assert_status_code_online('/prezzi__1.aspx', 400)

    # pagina non valida
    assert_status_code_online('/prezzi_cellulari_xyz.aspx', 400)
    assert_status_code_online('/prezzi_cellulari_-1.aspx', 400)
    assert_status_code_online('/prezzi_cellulari_0.aspx', 404)
    assert_status_code_online('/prezzi_cellulari_1000000.aspx', 410)

    # categoria non valida
    assert_status_code_online('/prezzi_all_1.aspx', 404)
    assert_status_code_online('/prezzi_telefonia_1.aspx', 404)
    assert_status_code_online('/prezzi_inesistente_1.aspx', 404)

    # ttutto valido
    assert_status_code_online('/prezzi_cellulari_1.aspx', 200)
  end

  it 'prezzi listing response local', :driver => :webkit  do
    assert_status_code_local('/prezzi__.aspx', 400)
    assert_status_code_local('/prezzi_cellulari_.aspx', 400)
    assert_status_code_local('/prezzi__1.aspx', 400)

    assert_status_code_local('/prezzi_cellulari_xyz.aspx', 400)
    assert_status_code_local('/prezzi_cellulari_-1.aspx', 400)
    assert_status_code_local('/prezzi_cellulari_0.aspx', 404)
    assert_status_code_local('/prezzi_cellulari_1000000.aspx', 410)

    assert_status_code_local('/prezzi_all_1.aspx', 404)
    assert_status_code_local('/prezzi_telefonia_1.aspx', 404)
    assert_status_code_local('/prezzi_inesistente_1.aspx', 404)

    assert_status_code_local('/prezzi_cellulari_1.aspx', 200)
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