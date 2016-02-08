require 'rbconfig'
include RbConfig

# Le variabili di sistema (env) vengono lette da Ruby quando parte.
# Queste variabili modificano il comportamento dell'interprete Ruby.
puts '--- OS environment variable start ---'
ENV.keys.sort.each do |key|
	puts "#{key} = #{ENV[key]}"
end
puts '--- OS environment variable end ---'

# Memoria allocata dalla VM di Ruby per l'esecuzione di task.
puts '--- Ruby VM start ---'
RubyVM::DEFAULT_PARAMS.keys.sort.each do |key|
	puts "#{key} = #{RubyVM::DEFAULT_PARAMS[key]}"
end
puts '--- Ruby VM end ---'

# Setting usati per compilare Ruby.
puts '--- Ruby compiler setting start ---'
CONFIG.keys.sort.each do |key|
	puts "#{key}: #{CONFIG[key]}"
end
puts '--- Ruby compiler setting end ---'