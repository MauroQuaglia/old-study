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

  def has_errors?
    @errors.size > 0
  end

  def report
    report=''
    @errors.each do |key, value|
      report << "#{value} - #{@keyword} - #{key}"
    end
    report
  end

end