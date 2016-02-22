# encoding: utf-8

RSpec.describe 'RubyEncoding' do

	it 'encoding' do
    # Stringhe con l'encoding del file.
    show_encoding("cat") #utf-8
    show_encoding("∂og") #utf-8

    # Simboli utf-8 a meno che non contengano caratteri di 7-bit, ascii.
    show_encoding(:cat)  #ascii
    show_encoding(:∂og)  #utf-8

    # Regexp utf-8 a meno che non contengano caratteri di 7-bit, ascii.    
    show_encoding(/cat/) #ascii
    show_encoding(/∂og/) #utf-8
  end

  it 'cretae arbitrary unicode character' do
    # bisogna usare l'escape \u. in tal caso sono sempre encodati utf-8 indipendentemente dall'encoding del file. 
    # \uxxxx con 4 cifre esadecimali: 0123456789ABCDEF
    # \u{x... y... ...} x... è un numero variabile di caratteri ognuno dei quali è esadecimale 

    puts "\u03C0" 
    puts "\u{00 AF FFF 1}"

    # investighiamo sui byte.
    show_byte("\u03C0")
    show_byte("\u{00 AF FFF 1}")

  end

  private

  def show_encoding(value)
    puts "[#{value}] - encoding: [#{value.encoding.name}]"
  end

 def show_byte(value)
    puts "[#{value}] - bytes: [#{value.bytes}]"
  end
end
      