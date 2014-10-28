require_relative 'analyzer'

class LogReader

  def initialize(keyword)
    @analyzer=Analyzer.new(keyword)
  end

  def parse(path)
    Dir.glob(path + '/*.log') do |file|
      File.open(file).each_line do |line|
        @analyzer.parse(line)
      end
    end
    @analyzer
  end

end