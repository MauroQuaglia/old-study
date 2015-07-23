# Non posso lanciare da soli, gli serve un contesto che gli verrà dato dopo.
# Questo file è da caricare nella classe che gli fornirà i contesti.

RSpec.shared_examples 'example' do |parameter|

  let(:something){parameter}

  it 'check the parameter' do
    expect(something).to eq(parameter)
  end

end
