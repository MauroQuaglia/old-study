require_relative 'analyzer'

class LogReader

  def initialize(keyword)
    @analyzer=Analyzer.new(keyword)
  end

  def parse(path)
    file = File.open(path)
    file.each_line do |line|
      @analyzer.parse(line)
    end
    @analyzer
  end

end