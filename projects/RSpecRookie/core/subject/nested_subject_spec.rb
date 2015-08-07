class OneElementArray < Array
  def initialize(*)
    super
    unshift 'x'
  end
end

RSpec.describe Array do
  describe OneElementArray do
    it 'should not be empty' do
      expect(subject).not_to be_empty
    end
  end
end