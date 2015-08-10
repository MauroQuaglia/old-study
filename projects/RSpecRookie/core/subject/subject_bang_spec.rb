RSpec.describe 'subject call before example' do
  subject! { elements.push(99) }

  let(:elements) { [1, 2, 3] }

  it 'call the definition block before the example' do
    elements.push(5)
    expect(elements).to eq([1, 2, 3, 99, 5])
  end

  it 'call the definition block before the example' do
    elements.push(6)
    expect(elements).to eq([1, 2, 3, 99, 6])
  end
end

RSpec.describe 'subject call before after' do
  subject { elements.push(99) }

  let(:elements) { [1, 2, 3] }

  it 'call the definition block after the example' do
    elements.push(5)
    expect(elements).to eq([1, 2, 3, 5])
  end
end

RSpec.describe 'subject call before after' do
  subject! { puts 'prima del test' } # Se tolgo !, non vedo nessuna puts.

  it 'call the subject' do
  end

end

RSpec.describe 'eager loading using a named subject!' do
  subject!(:updated_list) { element_list.push(99) }

  let(:element_list) { [1, 2, 3] }

  it 'calls the definition block before the example' do
    element_list.push(5)
    expect(element_list).to eq([1, 2, 3, 99, 5])
    expect(updated_list).to be(element_list)
  end
end

