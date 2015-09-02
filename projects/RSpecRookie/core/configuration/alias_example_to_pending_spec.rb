RSpec.configure do |c|
  c.alias_example_to :pending, :pending => 'ciaoxxx'
  c.alias_example_to :task
end

RSpec.describe 'an example group' do
  pending "does something later on" do
    fail "not implemented yet"
  end

  task 'it runs' do
    p 'ciao'
  end
end