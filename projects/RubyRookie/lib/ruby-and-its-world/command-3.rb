puts "ARGV.inspect: #{ARGV.inspect}"

#ARGF è un puntatore ad ARGV.
# ARGV.delete_at(0)

while line = ARGF.gets # gets
	p "#{ARGF.lineno}: #{ARGF.filename} - #{ARGF.file.lineno} - #{line}"
end

