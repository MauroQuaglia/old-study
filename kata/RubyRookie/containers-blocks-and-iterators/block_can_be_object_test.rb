require 'test/unit'
require_relative 'proc_example'

class BlockCanBeObjectTest < Test::Unit::TestCase

  def test_1
    my_class = ProcExample.new {|p| puts p}
    my_class.execute 'ciao'
  end

  def test_2
    my_class = ProcExample.new {|p| puts 'XXX' + p + 'XXX'}
    my_proc_object = my_class.get_block # mi riprendo il blocco
    my_proc_object.call 'MAURO'
    my_proc_object.call 'GANCI'
  end

  def test_3
    block1 = Proc.new {|p| p 'Proc.new ' + p}
    block2 = lambda {|p| p 'lambda ' + p}
    p block1
    p block2

    block1.call 'MAURO'
    block2.call 'MAURO'
  end

end
