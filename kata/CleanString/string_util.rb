class StringUtil
  EMPTY = ''
  BLANK = ' '

  def normalizeSpaces(s)
    r = EMPTY

    for i in (0...s.length)
      r += s[i] if (s[i] != BLANK || s[i+1] != BLANK)
    end

    r[0]=EMPTY if r[0] == BLANK
    r[r.length-1]=EMPTY if r[r.length-1] == BLANK

    r
  end

  # classico
  def reverse1(s)
    r=EMPTY

    i = s.length-1
    while (i >= 0)
      r += s[i]
      i-=1
    end

    r
  end

  # senza variabili in più, scambiando solo le locazioni di memoria dell'array.
  # notare s.length/2
  def reverse2(s)
    r = s.chars
    for i in 0...r.length/2
      r.insert(i, r[r.length-1-i])
      r.delete_at(r.length-1-i)
      r.insert(r.length-i, r[i+1])
      r.delete_at(i+1)
    end
    r.join
  end

  # scambiando solo le locazioni di memoria dell'array, con una variabile di appoggio.
  # notare s.length/2
  def reverse3(s)
    for i in 0...s.length/2
      a=s[i]
      s[i]=s[s.length-1-i]
      s[s.length-1-i] = a
    end
    s
  end

end



