# Call this with some arguments.

p "ARGV: #{ARGV.inspect}"

p "Enter : "
p ARGF.gets

p "$0 = #{$0}"
p "$PROGRAM_NAME = #{$PROGRAM_NAME}"
