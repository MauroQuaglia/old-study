require 'cgi'

RSpec.describe 'CGI' do

	it 'escape url and html' do
    # URL
    p CGI.escape("Mauro / Quaglia &  Certosa")
    p CGI.unescape("Mauro+%2F+Quaglia+%26++Certosa")

    # HTML
    p CGI.escapeHTML("a < 100 && b > 10")
    p CGI.unescapeHTML("a &lt; 100 &amp;&amp; b &gt; 10")
  end
  end