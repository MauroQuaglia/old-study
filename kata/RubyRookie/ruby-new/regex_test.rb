require 'test-unit'

class RegexTest < Test::Unit::TestCase

  def test_0
    # Lo posso scrivere in entrambe i modi.
    p 'Perl' =~ /Perl/
    p /Perl/ =~ 'Perl'
  end

  def test_1
    p 'Perl'=~/Perl/
    p 'Perl'=~/Perl|Python/ # | = OR
    p 'Perl'=~/P(erl|ython)/ # vale anche come proprietà associativa
    p 'abc'=~/abc/
    p 'abbc'=~/abc/
    p 'abbc'=~/ab+c/ # + significa 1 o più
    p 'ac'=~/ab*c/  # * significa 0 o più
  end

  def test_2
    p '12:34:56'=~/\d\d:\d\d:\d\d/
    p 'PerlXXXYYYPython'=~/Perl.*Python/ #.* zero o più caratteri
    p 'Perl Python'=~/Perl Python/ # match esatto
    p 'Perl Python'=~/Perl *Python/ #  . zero o più spazi
    p 'Perl Python'=~/Perl +Python/ #  + uno o più spazi
    p 'Perl Python'=~/Perl\sPython/  # \s uno spazio, tab, new line, ...
    p 'Ruby Perl'=~/Ruby (Perl|Python)/  # Ruby, uno spazio, poi perl o python
  end

  def test_3
    p 'Perl'=~/Perl/ # 0 è la posizione di partenza
    p 'XXX Perl YYY'=~/Perl/ # 4 è la posizione di partenza
  end

  def test_4
    p 'RubyRuby'.sub(/Ruby/, 'Perl')
    p 'RubyRuby'.gsub(/Ruby/, 'Perl')
  end

end