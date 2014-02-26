class Roman

  def initialize
    @roman = Hash.new(0)
    @roman['I'] = 1
    @roman['V'] = 5
    @roman['X'] = 10
    @roman['L'] = 50
    @roman['C'] = 100
    @roman['D'] = 500
    @roman['M'] = 1000
  end

  def to_decimal(r)
    sum = @roman[r[-1]]
    for i in 0...r.length-1
      sum += (@roman[r[i]]-@roman[r[i+1]]+0.5<=>0)*@roman[r[i]]
    end
    sum
  end

  def to_decimal2(r)
    sum=0
    r.split(//).each_index { |i| sum+=(@roman[r[i]]+0.5<=>@roman[r[i+1]])*@roman[r[i]] }
    sum
  end

end