class StringUtil

  def initialize(value)
    @value = value
  end

  def cleaned
    result = ''
    count=1
    chars=@value.split(//)

    while count < chars.size
      if chars[count] == ' ' && chars[count-1] == ' '
        next
      end

      result += chars[count]


      count+=1
    end


  end


  #def cleaned
  #  result = ''
  #  @value.split(//).each_with_index do |char, index|
  #
  #    puts "char: #{char} -- index: #{index}"
  #  end
  #
  #
  #end

end