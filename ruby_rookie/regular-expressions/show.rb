class Show

  def regex(string, pattern)
    match = pattern.match(string)
    p match ? "[#{match.pre_match}] - [#{match[0]}] - [#{match.post_match}]" : 'No match!'
  end

end