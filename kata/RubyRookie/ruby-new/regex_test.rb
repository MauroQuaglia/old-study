require 'test-unit'

class RegexTest < Test::Unit::TestCase

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
    matched?{'12:34:56'=~/\d\d:\d\d:\d\d/}
    matched?{'PerlXXXYYYPython'=~/Perl.*Python/} #.* zero o più caratteri
    matched?{'Perl Python'=~/Perl Python/} # match esatto
    matched?{'Perl Python'=~/Perl *Python/} #  . zero o più spazi
    matched?{'Perl Python'=~/Perl +Python/} #  + uno o più spazi
    matched?{'Perl Python'=~/Perl\sPython/}  # \s uno spazio, tab, new line, ...
    matched?{'Ruby Perl'=~/Ruby (Perl|Python)/}  # Ruby, uno spazio, poi perl o python
  end

  def test_3
    puts 'Perl'=~/Perl/ # 0 è la posizione di partenza
    puts 'XXX Perl YYY'=~/Perl/ # 4 è la posizione di partenza
  end

  def test_4
    if 5
      puts '5 è true'
    end

    if nil
     puts 'nil è true'
    else
      puts 'nil è false'
    end
  end

  def test_5
    puts 'RubyRuby'.sub(/Ruby/, 'Perl')
    puts 'RubyRuby'.gsub(/Ruby/, 'Perl')
  end

  private

  def matched?
    p yield
  end

end