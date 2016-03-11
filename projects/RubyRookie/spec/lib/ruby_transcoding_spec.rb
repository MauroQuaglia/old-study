# encoding: utf-8

RSpec.describe 'Transcoding' do

  # Cambia i byte della stringa da covertire.
  describe '#encode' do

    it 'encode 1' do
      ole_in_utf8 = 'olé'
      p ole_in_utf8
      p ole_in_utf8.encoding
      p ole_in_utf8.bytes.to_a

      # Penso che faccia così: parte dall'utf-8, fa la controimmagie del carattere
      # per vedere a che valore unicode corrisponde, poi calcola iso-8859-1(valore trovato)
      # iso-8859-1(controimmagine di é in utf-8)
      ole_in_8859 = ole_in_utf8.encode(Encoding::ISO_8859_1)
      p ole_in_8859
      p ole_in_8859.encoding
      p ole_in_8859.bytes.to_a
    end

    it 'encode 2' do
      ole_in_utf8 = "π"
      p ole_in_utf8
      p ole_in_utf8.encoding
      p ole_in_utf8.bytes.to_a

      ole_in_8859 = ole_in_utf8.encode(Encoding::ISO_8859_1)
    end

    it 'encode 3' do
      ole_in_utf8 = "xπx"
      p ole_in_utf8
      p ole_in_utf8.encoding
      p ole_in_utf8.bytes.to_a

      ole_in_8859 = ole_in_utf8.encode(Encoding::ISO_8859_1, undef: :replace, replace: '??')
      p ole_in_8859
      p ole_in_8859.encoding
      p ole_in_8859.bytes.to_a
    end

  end

  # Non Cambia i byte della stringa da covertire.
  describe '#force_encoding' do

    it 'encode 1' do
      ole_in_utf8 = 'olé'
      p ole_in_utf8
      p ole_in_utf8.encoding
      p ole_in_utf8.bytes.to_a

      ole_in_8859 = ole_in_utf8.force_encoding(Encoding::ISO_8859_1)
      p ole_in_8859
      p ole_in_8859.encoding
      p ole_in_8859.bytes.to_a
    end

    it 'encode 2' do
      ole_in_utf8 = "π"
      p ole_in_utf8
      p ole_in_utf8.encoding
      p ole_in_utf8.bytes.to_a

      ole_in_8859 = ole_in_utf8.force_encoding(Encoding::ISO_8859_1)
      p ole_in_8859
      p ole_in_8859.encoding
      p ole_in_8859.bytes.to_a
    end

  end


end
      