class Analyzer

  def has_errors?(path)
    file = File.open(path)
    file.each_line do |line|
      return true if line.include?('ERROR')
    end
    false
  end

end