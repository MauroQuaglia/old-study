module Trig
  PI = 3.14
  # module method: metodo che inizia con il nome del modulo.
  def Trig.sin(x)
    p x
  end

  def who_am_i?
    "#{self.class.name} (id: #{self.object_id}: #{self.name}) "
  end
end