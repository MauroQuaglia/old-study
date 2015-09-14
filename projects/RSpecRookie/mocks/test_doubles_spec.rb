require_relative 'person'

RSpec.describe 'test double' do

  xit 'raises error' do
    collaborator = double('some collaborator')
    p collaborator.foo
  end

  it 'programmed double' do
    collaborator = double('some collaborator', foo: 'hello world')
    p collaborator.foo
  end

  it 'allow' do
    dbl = double('some collaborator')
    allow(dbl).to receive(:foo){'FOO'}
    allow(dbl).to receive(:bar).and_return('BAR')

    p dbl.foo
    p dbl.bar
  end

  it 'bulk allow' do
    dbl = double('some collaborator')
    allow(dbl).to receive_messages(foo: 'X', bar: 'Y')

    p dbl.foo
    p dbl.bar
  end

  it 'expect fail' do
    dbl = double()
    expect(dbl).not_to receive(:foo)
  end

  it 'expect not fail' do
    dbl = double()
    expect(dbl).to receive(:foo)
    dbl.foo
  end
  
  it 'partial double' do
    person = Person.new

    dbl = double("Person", name: 'Ganci')
    allow(person).to receive(:find){dbl}

    p person.find.name
  end

  it 'not raise error' do
    dbl = double('collaborator').as_null_object
    p dbl.foo
    expect(dbl.foo.bar.bazz).to be(dbl)
  end
end