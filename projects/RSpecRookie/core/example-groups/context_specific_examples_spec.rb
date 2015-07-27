RSpec.describe 'shared example' do

  # Sono definiti direttamente dentro il describe.
  # Sono esterni a qualsiasi contesto.
  shared_examples 'shared examples are nestable' do

    # Se non gli metto il titolo viene messo 'should be truthy'
    specify {expect(true).to be_truthy}

    # Se non gli metto il titolo viene messo 'should eq true'
    it {expect(true).to eq(true)}

    # Il titolo è 'also this is true'
    it 'also this is true' do
      expect(true).to eq(true)
    end

  end

  context 'per context' do
    # Li richiama in questo contesto.
    it_behaves_like 'shared examples are nestable'
  end

end


RSpec.describe 'shared example' do

  # Inseriti in questo contesto sono visibili.
  context 'in first context' do

    shared_examples 'are visible' do
      specify {expect(true).to be_truthy}
    end

    it_behaves_like 'are visible'
  end

  # Non sono visibili da questo contesto.
  context 'in second context 'do
    it_behaves_like 'are visible'
  end

end