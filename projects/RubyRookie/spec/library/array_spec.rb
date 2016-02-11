RSpec.describe Array do

	it '.new' do
		expect(Array.new).to eq([])

		expect(Array.new(2)).to eq([nil, nil])
    

		expect(Array.new(3, 'x')).to eq(['x', 'x', 'x'])

		# Viene creata solo un'istanza dell'oggetto di default.	
		array1 = Array.new(2, Hash.new)
		array1[0]['cat'] = 'feline'
		
	end

end
      