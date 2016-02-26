# encoding: utf-8

RSpec.describe 'RubyEncoding' do

	xit 'puts encoding of this file' do
    puts __ENCODING__	
   # puts 'π' # Se metto ascii, non funziona.
  end

 xit 'show all encodings' do
   checkmark = "\u03C0" 
   puts checkmark.encode('utf-8').bytes
    puts "pi: ".encode('utf-8').bytes
  end

  it 'all' do
    pi = "\u03C0" #valore esadecimale del carattere in unicode
    Encoding.list.each do |encoding|
      begin
        puts pi
        puts encoding.name  
        puts pi.encode(encoding).bytes.to_s

         pi.encode(encoding).bytes.each do |decimal|
          puts decimal.to_s(2)
         end 



      rescue
        puts "Non esiste"
      ensure
        puts '------------------------------------------------------'
      end
    end
  end

  it 'contro image' do
    
  end


end
      