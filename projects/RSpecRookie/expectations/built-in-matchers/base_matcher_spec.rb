require_relative 'stuff'

RSpec.describe 'base matchers' do

  it 'identity' do
    v = String.new('x')

    # equal?
    expect(v).to be(v)
    expect(v).to equal(v)
  end

  it 'equivalence' do
    expect(17.0).to eq(17) # ==
    expect(17).to eql(17) # eql?
  end

  it 'comparison 1' do
    expect(5).to be <(10)
    expect(9).to be <=(10)
    expect(11).to be >=(10)
    expect(15).to be >(10)
  end

  it 'comparison 2' do
    expect(5).to be_between(5, 10).inclusive
    expect(7).to be_between(5, 10).exclusive
    expect(5.2).to be_within(0.5).of(5) # Mi aspetto che actual (5.2) sia in un intorno di 5.
  end

  it 'comparison 3' do
    expect('abc').to match(/b/)
    expect('abc').to start_with('a')
    expect('abc').to end_with('c')
  end

  it 'class' do
    expect(10).to be_instance_of(Fixnum)
  end

  it 'kind' do
    expect(10).to be_kind_of(Numeric)
  end

  it 'response' do
    expect('x').to respond_to(:length)
  end

  it 'boolean' do
    expect('x').to be_truthy
    expect(true).to be(true)

    expect(false).to be_falsey
    expect(nil).to be_falsey
    expect(false).to be(false)
  end

  it 'nil' do
    expect(nil).to be_nil
  end

  it 'existance' do
    expect(Stuff.new).to exist
    expect(Stuff.new).to exist('x')
  end

  it 'error' do
    expect { Stuff.new.not_existing_method }.to raise_error
    expect { Stuff.new.security_error }.to raise_error
#    expect { ... }.to raise_error(ErrorClass)
 #   expect { ... }.to raise_error("message")
  #  expect { ... }.to raise_error(ErrorClass, "message")
  end

end