RSpec.shared_context 'shared stuff', :a => :b do

  before { @some_var = :some_value }

  def shared_method
    'it works'
  end

  let(:shared_let) {
    { 'A' => '1' }
  }

  subject do
    'this is the subject'
  end

end