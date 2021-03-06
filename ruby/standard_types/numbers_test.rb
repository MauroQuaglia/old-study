require 'test/unit'
#require 'mathn'

class NumbersTest < Test::Unit::TestCase

  def test_1
    num = 10000
    4.times do
      puts "#{num.class}: #{num}"
      num *= num
    end
  end

  def test_2
    print_number_info 123456
    print_number_info 0d123456
    print_number_info 123_456
    print_number_info -123
    print_number_info -0x1
    print_number_info 0xaabb
    print_number_info 0xAABB
    print_number_info 0377
    print_number_info 0b1010101010
    print_number_info -0b1010101010
    print_number_info 123_245_789_101_112_131_415
    print_number_info 123_245_789_101_112_131_415.0
  end

  def test_3
    print_number_info 1.2
    print_number_info 1e3 # 1000 = 1 * 10^3
    print_number_info 1.0e3 # 1000 = 1 * 10^3
    print_number_info 1e0 # 1.0 = 1.0 * 10^0 = 1.0 * 1 = 1.0
    print_number_info 5e2 # 1.0 = 1.0 * 10^0 = 1.0 * 1 = 1.0
  end

  def test_4
    puts Rational(3, 4) * Rational(2, 3)
    puts Rational('3/4') * Rational('2/3')
    puts 1.0/3
    puts Rational(1, 3)
    puts print_number_info Rational(3, 4)
  end

  def test_5
    puts Complex(1,2) * Complex(3,4)
    puts Complex(0,1) * Complex(0,1)
    puts print_number_info Complex(1,1)
  end

  def test_6
    print_number_info(3 + 5.0)
    print_number_info(Complex(1,1) + 5.0)
    print_number_info(Complex(1,1) + 5)
    print_number_info(1.0 + Rational(2,3)) # FLOAT  Q c R e i reali sono rappresentati da Float
    print_number_info(1 / 2)
    print_number_info(1.0 / 2)
    print_number_info(1.0 / 3)
    print_number_info(0.3333333333333333 * 3)

    # Senza mathn
    #Fixnum: 3
    #Complex: -1+0i
    print_number_info(22 / 7)
    print_number_info(Complex::I * Complex::I)

    # con mathn
    #Rational: 22/7
    #Fixnum: -1
    print_number_info(22 / 7)
    print_number_info(Complex::I * Complex::I)
  end

  def test_7
    3.times{print 'x', ' '}
    1.upto(5){print 'y', ' '}
    99.downto(98){print '- '}
    10.step(20, 2){print 'L '}

    p 3.times # senza i blocchi tornano un enumeratore
    10.downto(7).with_index{|num, idx| p "#{idx}: #{num}"}
  end

  def test_8
    puts print_number_info('9')
    puts print_number_info(Integer('9'))
  end

  private

  def print_number_info(num)
    puts "#{num.class}: #{num}"
  end


end