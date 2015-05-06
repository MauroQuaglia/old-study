print '(t)imes or (p)lus: '
operator = gets()

print 'number: '
number = Integer(gets())


# --- PRIMA VERSIONE ---
if operator =~ /^t/
  puts ((1..10).collect{|n| number * n}.join(', '))
else
  puts ((1..10).collect{|n| number + n}.join(', '))
end
# ----------------------



#--- SECONDA VERSIONE ---
if operator =~ /^t/
  calc = lambda{|n| n * number}
else
  calc = lambda{|n| n + number}
end

puts ((1..10).collect(&calc).join(', '))
# ----------------------

