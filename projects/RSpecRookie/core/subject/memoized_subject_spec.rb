RSpec.describe Array do
  element_list = [1, 2, 3]
  subject { element_list.pop }

  it 'is memoized across calls (i.e. the block is invoked once)' do
    # dato che è in memoria, la prima volta lo fa e torna 3, dopo non lo fa più e torna sempre 3.
    subject
    subject
    subject
    expect(subject). to eq(3)
  end

  it 'is not memoized across examples' do
    # qua non è più in memoria quindi lo rifà e torna 2.
    subject
    expect(subject). to eq(2)
  end
end