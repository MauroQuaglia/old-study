require 'test/unit'
require_relative 'show'

class AdvancedConditionalGroupTest < Test::Unit::TestCase

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
    # Se la prima persona ha titolo così deve avere la seconda, se non ha titolo non deve averlo neanche la seconda.
    # Qui però dobbiamo evitare il backtracking, altrimenti se il primo matcha e il secondo no, con il backtracking
    # il motore regexp torna indietro e trascura il condizionale.
    re =
        %r{
        ^(?>
          (?: (?<title>Mrs | Mr | Ms | Dr) \s )? (.*?)
          \s and \s
        )
        (?(<title>)\g<title>\s) (.+)
        }x

    p re.match('Mr Jones and Sally')
    p re.match('Mr Bond and Ms Moneypenny')
    p re.match('Samson and Deliah')
    p re.match('Dr Jek and himself')
    p re.match('Ms Hikki Kihhi and Ms Jones')
    p re.match('Dr Wooh and Mrs wood')
    p re.match('thelma and louise')
  end

end