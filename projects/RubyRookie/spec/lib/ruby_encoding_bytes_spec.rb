# encoding: utf-8

RSpec.describe 'RubyEncoding' do

  # I byte della stringa sono indipendenti dall'encoding in alto.
	it 'simple ascii char' do
    puts __ENCODING__
    puts 'a'.bytes # 97
    puts 'a'.bytes.first.to_s(2) # 1100001 (7 bit)
  end

  # Questo non dipende dall'encoding che metto in alto. Funziona sempre
  # In questo caso prende l'array di byte e lo traduce per l'encoding specificato in alto.
  it 'greek pi in unicode format' do
    puts __ENCODING__
    puts "\u03C0".bytes # 207 128
    puts "\u03C0".bytes.first.to_s(2) # 11001111 (8 bit, il primo è 1)
  end

  # Questo invece dipende dall'encoding che metto in alto.
  # Se metto utf-8 ok, se metto ascii si rompe.
  # In questo caso guarda se il carattere scritto fa parte del charset dell'encoding che metto in alto.
  it 'greek pi in' do
    puts __ENCODING__
    puts "π".bytes # 207 128
    puts "π".bytes.first.to_s(2) # 11001111 (8 bit, il primo è 1)
  end

  it 'same bytes in different encoding' do
    puts "\u03C0".encode(Encoding::UTF_8)
    puts "\u03C0".encode(Encoding::SJIS)
  end

  it 'greek pi bytes in all encoding' do
    Encoding.list.each do |encoding|
      puts encoding
      begin
        puts"\u03C0".encode(encoding)
      rescue
        puts 'Invalid sequence for ' + encoding.name
      end
      puts '------------------------------------------'
    end
  end
end
      