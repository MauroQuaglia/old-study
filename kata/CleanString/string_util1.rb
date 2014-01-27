class StringUtil1

  def normalizeSpaces1(s)
    r = ''
    for i in 0...s.length
      r+=s[i] if s[i]!=' ' || s[i+1]!=' '
    end
    r[0]='' if r[0]==' '
    r[r.length-1]='' if r[r.length-1]==' '
    r
  end

  def normalizeSpaces2(s)
    r=''
    b=' '+s+' '
    for i in 0...b.length
      r+=b[i] if b[i]!=' ' || r[r.length-1]!=' '
    end
    r[0]=r[r.length-1]=''
    r
  end

  def normalizeSpaces3(s)
    s.gsub(/\s+/, ' ').strip
  end

end
