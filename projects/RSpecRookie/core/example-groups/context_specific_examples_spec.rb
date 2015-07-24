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

# Posso anche inserirli dentro un contesto
RSpec.describe 'shared example' do

  context 'per context' do

    shared_examples 'shared examples are nestable' do
      specify {expect(true).to be_truthy}
    end

    it_behaves_like 'shared examples are nestable'
  end

end