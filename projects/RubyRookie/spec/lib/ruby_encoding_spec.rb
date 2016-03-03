# encoding: utf-8

RSpec.describe 'RubyEncoding' do

	it 'current encoding of this file' do
    expect(__ENCODING__).to eq(Encoding::UTF_8)
  end

  it 'show all static encodings' do
    # Tutti quelli che hanno anche un alias.
    Encoding.aliases.each do |encoding_alias, encoding_name|
      puts "#{encoding_name} (#{encoding_alias})"
    end

    puts '-----------------------------------------'

    # Tutti.
    Encoding.list.each do |encoding_name|
      puts encoding_name
    end
  end

  it 'utf-8 inspector' do
    puts Encoding::UTF_8.methods
  end

  it 'work with greek pi in utf-8' do
    puts "\u03C0".encode(Encoding::UTF_8).bytes.to_s
    "\u03C0".encode(Encoding::UTF_8).bytes.each{|decimal| p decimal.to_s(2) }
    "\u03C0".encode(Encoding::UTF_8).bytes.each{|decimal| p decimal.to_s(16) }
  end

  it 'work with greek pi in different encoding' do
    puts "\u03C0".encode(Encoding::UTF_8).bytes.to_s
    puts "\u03C0".encode(Encoding::SJIS).bytes.to_s
  end



end
      