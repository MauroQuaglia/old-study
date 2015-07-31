require 'rspec/expectations'
require_relative 'thing'

RSpec.describe Thing do

  # Eseguito una volta sola, all'inizio del describe.
  before(:context) do
    @thing = Thing.new
  end

  describe 'initialized in before(:context)' do

    it 'has 0 widgets' do
      expect(@thing.widgets.count).to eq(0)
    end

    it 'can accept new widgets' do
      @thing.widgets << Object.new
    end

    it 'share state across examples' do
      expect(@thing.widgets.count).to eq(1)
    end

  end

end

RSpec.describe 'an error in before(:context)' do

  # Eseguito una volta per tutta la suite di test, non importa se ci sono dei livelli innestati.
  # Dato che però fallisce, di conseguenza falliscono tutti i test.
  before(:context) do
    raise 'oops'
  end

  # Fallisce perché comunque un errore c'è stato!
  it 'fails this example' do
  end

  # Fallisce perché comunque un errore c'è stato!
  it 'fails this example, too' do
  end

  after(:context) do
    puts 'after context ran'
  end

  describe 'nested group' do

    # Fallisce perché comunque un errore c'è stato!
    it 'fails this third example' do
    end

    # Fallisce perché comunque un errore c'è stato!
    it 'fails this fourth example' do
    end

    describe 'yet another level deep' do

      # Fallisce perché comunque un errore c'è stato!
      it 'fails this fourth example' do
      end

    end

  end

end
