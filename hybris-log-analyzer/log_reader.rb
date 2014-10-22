require_relative 'analyzer'

class LogReader

  def initialize
    @analyzer=Analyzer.new('ERROR')
  end

  def parse(path)
    file = File.open(path)
    file.each_line do |line|
      @analyzer.parse(line)
    end
    @analyzer
  end

end