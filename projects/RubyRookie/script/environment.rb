# Le variabili di sistema vengono lette da ruby quando parte.
# Queste variabili modificano il comportamento dell'interprete ruby.

puts 'Operating system environment variable:'
ENV.keys.each do |key|
	puts  "#{key} = #{ENV[key]}"
end
puts ' ------------------------------------- '

# Memoria allocata dalla vm di ruby per vari task
puts 'Environment variabled used by Ruby:'
RubyVM::DEFAULT_PARAMS.keys.each do |key|
	puts  "#{key} = #{RubyVM::DEFAULT_PARAMS[key]}"
end
puts ' ------------------------------------- '


