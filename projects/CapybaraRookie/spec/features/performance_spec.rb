require 'rails_helper'

RSpec.feature 'Performance of driver' do

  it 'rack_test', :driver => :rack_test  do
    benchmark
  end

  it 'selenium', :driver => :selenium  do
    benchmark
  end

  it 'webkit', :driver => :webkit  do
    benchmark
  end

  it 'poltergeist', :driver => :poltergeist  do
    benchmark
  end

  private

  def benchmark
    puts "[#{Benchmark.realtime { visit capybara_path }}] seconds for #{Capybara.current_driver}"
  end

end