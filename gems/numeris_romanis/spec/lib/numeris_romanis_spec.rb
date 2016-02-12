require 'numeris_romanis'

RSpec.describe NumerisRomanis do

  it 'should convert roman numbers correctly' do
    numbers = described_class.new

    expect(numbers.to_decimal('I')).to eq(1)
    expect(numbers.to_decimal('MMMCMXCIX')).to eq(3999)
  end

end
