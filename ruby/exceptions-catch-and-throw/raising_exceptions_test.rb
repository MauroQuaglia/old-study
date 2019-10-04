require 'test/unit'

class RaisingExceptionsTest < Test::Unit::TestCase

  def test_1
    #raise # RuntimeError
    #raise 'mp3' # RuntimeError con messaggio
    #raise NameError, 'mp3' # NameError con messaggio
    #raise NameError, 'mp3', caller # NameError con messaggio
    #raise NameError, 'mp3'# NameError con messaggio
    raise NameError, 'mp3', 'stack-trace' # NameError con messaggio e stack
  end

  def test_2
    fail # RuntimeError
  end

end
