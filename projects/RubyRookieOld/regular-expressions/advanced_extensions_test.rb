require 'test/unit'

class AdvancedExtensionsTest < Test::Unit::TestCase

  def test_1
    date = '12/25/2010'

    date =~ %r{(\d+)(/)(\d+)(/)(\d+)}
    # (/|:) slash O : non servono gli escape perché usiamo la sintassi %r{}
    p $1, $2, $3, $4, $5

    date =~ %r{(\d+)(?:/)(\d+)(?:/)(\d+)}
    # (/|:) slash O : non servono gli escape perché usiamo la sintassi %r{}
    p $1, $2, $3
  end


end