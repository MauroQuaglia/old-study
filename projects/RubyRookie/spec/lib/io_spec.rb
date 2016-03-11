RSpec.describe 'I/O operations' do

  it 'should read a file with encoding' do
    file = File.open('/home/mauro/studio/mauro-quaglia/studio/projects/RubyRookie/spec/lib/encoding_utf-8.txt')
    p file.external_encoding
    p file.gets.encoding
  end

  it 'should read a file with encoding 2' do
    file = File.open('/home/mauro/studio/mauro-quaglia/studio/projects/RubyRookie/spec/lib/encoding_iso-8859-1.txt', 'r:ascii')
    p file.external_encoding
    p file.gets.encoding
  end
end