# coding: utf-8

RSpec.describe 'RubyEncoding' do

	it 'puts encoding of this file' do
    puts __ENCODING__	
    puts 'π' # Se metto ascii, non funziona.
  end

end
      