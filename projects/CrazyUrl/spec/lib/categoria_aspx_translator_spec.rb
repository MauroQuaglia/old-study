RSpec.describe CategoriaAspxTranslator do

  it 'should translate categoria aspx url in fprezzo url' do
    described_class.new(7, 'nokia', 'fpn', 1, 'Prezzo', 0).to_nice_url
  end

end