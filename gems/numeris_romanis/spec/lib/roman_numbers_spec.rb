require 'roman_numbers'

RSpec.describe RomanNumbers do
  
  it 'f' do
    numbers = described_class.new
      expect(numbers.to_roman( 1)).to eq('I')
    expect(numbers.to_roman( 2)).to eq('II')
    expect(numbers.to_roman( 3)).to eq('III')
    expect(numbers.to_roman( 4)).to eq('IV')
    expect(numbers.to_roman( 5)).to eq('V')
    expect(numbers.to_roman( 6)).to eq('VI')
    

  end

end
