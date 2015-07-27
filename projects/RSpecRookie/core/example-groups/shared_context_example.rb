require_relative 'shared_stuff'

RSpec.describe "group that includes a shared context using 'include_context'" do
  include_context 'shared stuff'

  it 'has access to methods' do
    expect(shared_method).to eq('it works')
  end

  it 'has access to methods defined with let' do
    expect(shared_let['A']).to eq('1')
  end

  it 'runs the before hooks' do
    expect(@some_var).to eq(:some_value)
  end

  it 'access the subject' do
    expect(subject).to eq('this is the subject')
  end

end

RSpec.describe 'redefine a variable with a block' do
  include_context 'shared stuff' do
    let(:shared_let) {
      { 'B' => '2'}
    }
  end

  it 'evaluate modify variable' do
    expect(shared_let['A']).to be_nil
    expect(shared_let['B']).to eq('2')
  end

end

RSpec.describe 'group that includes a shared context using metadata', :a => :b do

  it 'has access to methods' do
    expect(shared_method).to eq('it works')
  end

  it 'has access to methods defined with let' do
    expect(shared_let['A']).to eq('1')
  end

  it 'runs the before hooks' do
    expect(@some_var).to eq(:some_value)
  end

  it 'access the subject' do
    expect(subject).to eq('this is the subject')
  end

end

RSpec.describe 'group that does not include shared context' do

  it 'does not have access to shared metods' do
    expect(self).not_to respond_to(:shared_method)
  end


  it 'has access to shared method from example with matching metadata', :a => :b do
    expect(shared_method).to eq('it works')
  end

end
