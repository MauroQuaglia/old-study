print '(t)imes or (p)lus: '
operator = gets()

print 'number: '
number = Integer(gets())


if operator =~ /^t/
  puts ((1..10).collect{|n| number * n}.join(', '))
else
  puts ((1..10).collect{|n| number + n}.join(', '))
end



=begin
--- SECONDA VERSIONE ---

if operator =~ /^t/
  calc = lambda{|n| n * number}
else
  calc = lambda{|n| n + number}
end

puts ((1..10).collect(&calc).join(', '))
----------------------
=end


=begin
--- PRIMA VERSIONE ---
def operation
  puts ((1..10).collect{|n| yield n}.join(', '))
end
if operator =~ /^t/
  operation{|n| number * n}
else
  operation{|n| number + n}
end
----------------------
=end




