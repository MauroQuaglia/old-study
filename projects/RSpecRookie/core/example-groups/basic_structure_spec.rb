# Un gruppo.
RSpec.describe 'something' do

  it 'does something' do
    expect('A').to eq('B')
    # Mi aspetto che 'A' sia uguale a 'B'

    # expected: "B"
    # got: "A"
  end

end

# Gruppi innestati.
RSpec.describe 'something' do

  context 'in first context' do
    it 'does first thing' do
    end
  end

  context 'in second context' do
    specify 'does second thing' do
    end
  end

  describe 'in third context' do
    it 'does third thing' do
    end
  end

end

