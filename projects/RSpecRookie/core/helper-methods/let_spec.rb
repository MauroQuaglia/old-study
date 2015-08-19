$COUNT = 0
RSpec.describe 'let' do
  let(:count){$COUNT += 1}

  it 'should be memoized' do
    expect(count).to eq(1)
    expect(count).to eq(1)
  end

  it 'not now' do
    puts 'let is not called!'
  end

  it 'not now' do
    expect(count).to eq(2)
  end
end

$COUNT2 = 0
RSpec.describe 'let!' do
  let!(:count){$COUNT2 += 1}

  it 'should be memoized' do
    expect(count).to eq(1)
    expect(count).to eq(1)
  end

  it 'not now' do
    puts 'let is called!'
  end

  it 'not now' do
    expect(count).to eq(3)
  end

end
