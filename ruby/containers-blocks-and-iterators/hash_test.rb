require 'test-unit'

class HashTest < Test::Unit::TestCase

  def test_1
    h = {'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine'}
    p h.length
    p h['dog']
    h['cow'] = 'bovine'
    h[0] = 0
    h['cat'] = 999
    p h
  end

  def test_2
    h = {'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine'}
    p h

    j = {:dog => 'canine', :cat => 'feline', :donkey => 'asinine'}
    p j

    k = {dog: 'canine', cat: 'feline', donkey: 'asinine'}
    p k
  end

  def test_3
    h = {'A' => 1}
    h.each_key {|k| p k.object_id} #tutte le volte che lancio il test cambia la stringa, ne istanzia un'altra

    h = {A: 1}
    h.each_key {|k| p k.object_id} # qua è sempre uguale
  end

end