$count = 0

RSpec.describe 'named subject' do
  # global_count sostanzialmente è un metodo.
  # decorato con il subject viene memoizzato.
  subject(:global_count) { $count += 1 }

  it 'is memoized' do
    expect(global_count).to eq(1)
    expect(global_count).to eq(1)
  end

  it 'is not memoized from ' do
    expect(global_count).to eq(2)
  end

  it 'linear syntax' do
    is_expected.to eq(3)
  end

  it 'the subject and named helpers return the same object' do
    expect(global_count).to be(subject)
    expect(subject).to be(global_count)
  end
end