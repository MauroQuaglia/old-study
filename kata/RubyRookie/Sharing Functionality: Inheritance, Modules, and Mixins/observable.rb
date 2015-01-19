module Observable
  attr_reader :test

  def initialize
    @test = 'ciao'
    puts @test + 'sss'
  end

  def my_test
    puts 'modulo'
  end

  def observers
    @observer_list ||= []
  end

  def add_observer(obj)
    @observer_list << obj
  end

  def notify_observers
    @observer_list.each{|o| o .update}
  end


end