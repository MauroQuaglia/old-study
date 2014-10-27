class Analyzer

  def initialize(keyword)
    @errors = Hash.new(0)
    @keyword = keyword
  end

  def parse(line)
    return if line == ''
    tokens = line.split('|')
    if tokens[0].strip == @keyword
      @errors[tokens[4].strip] += 1
    end
  end

  def report
    return '' if @errors.empty?

    report="#{@keyword}\n"
    @errors.each do |key, value|
      report << "#{value} - #{key}\n"
    end
    report
  end

end