require 'test/unit'

alias old_backquote `
def `(cmd)
  result = old_backquote(cmd)
  if $? != 0
    puts "Command: [#{cmd}] failed with status: [#{$?.exitstatus}]!"
  end
  result
end

class RedefiningBackquotesTest < Test::Unit::TestCase

  def test_1
    print `ls -l /etc/passwd`
    print `ls -l /etc/wibble`
  end

end