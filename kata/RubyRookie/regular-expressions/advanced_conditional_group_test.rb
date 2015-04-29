require 'test/unit'
require_relative 'show'

class AdvancedConditionalGroupTest < Test::Unit::TestCase

  def setup
    @show = Show.new
  end

  def test_1
    re = %r{ (?: (Mrs | Mr | Ms | Dr) \s )? (.*?) \s and \s  }x

    #Traduzione
    # (?: XXX \s ) -> ?: significa che lo raggruppa ma non lo mette in una variabile $
    # (Mrs | Mr | Ms | Dr) -> quello che invece mette in una variabile $ è uno di questi
    # (?: (Mrs | Mr | Ms | Dr) \s )?  -> il ? finale significa che è opzionale: 0 o 1 (quindi la regexp può matchare ma se non c'è mrs, mr,...) la variabile $1 rimmarrà vuota, nil.
    # (.*?) -> (più caratteri opzionali fino a 'spazio' and)

    p 'Mr Bond and Ms Monneypenny' =~ re
    p $1, $2

    p 'Samson and Delilah' =~ re
    p $1, $2
  end

  def test_2
    # Ora dobbiamo matchare il secondo nome
    re =
        %r{
          (?: (Mrs | Mr | Ms | Dr) \s )? (.*?)
          \s and \s
          (?: (Mrs | Mr | Ms | Dr) \s )? (.+)
        }x

    p 'Mr Bond and Ms Monneypenny' =~ re
    p $1, $2, $3, $4

    p 'Samson and Delilah' =~ re
    p $1, $2, $3, $4
  end

  def test_3
    # Togliamo la duplicazione precedente
    re =
        %r{
          (?: (?<title>Mrs | Mr | Ms | Dr) \s )? (.*?)
          \s and \s
          (\g<title>\s)? (.+)
        }x

    p re.match('Mr Bond and Ms Monneypenny')
    p re.match('Samson and Delilah')
    p re.match('Mr Smith and Sally')
  end

  def test_4
    # Abbiamo visto prima che matchamo anche se il primo nome ha un titolo e il secondo no.
    # Con i gruppi condizionali possiamo intervenire e fare dei ragionamenti condizionali.
    re =
        %r{
          (?: (?<title>Mrs | Mr | Ms | Dr) \s )? (.*?)
          \s and \s
          (?(<title>)\g<title>\s) (.+)
        }x

    p re.match('Mr Smith and Sally')
  end

  def test_5
    data = <<-EOF
    Mr Jones and Sally
    Mr Bond and Ms Moneypenny
    Samson and Deliah
    Dr Jej and himself
    Ms H DD and Ms Jones
    Dr Wooh and mrs wood
    thelma and louise
    EOF
  end

end