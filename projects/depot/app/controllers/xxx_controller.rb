class XxxController < ApplicationController
  layout false

  # http://localhost:3000/xxx?format=json
  # http://localhost:3000/xxx.json
  # http://localhost:3000/xxx?format=html default
  # http://localhost:3000/xxx.html        default
  def index
    respond_to do |format|
      format.html { render(text: 'HTML') }
      format.json { render(text: 'JSON') }
    end
  end


  def method_missing(name, *args)
    render(inline: "Action sconosciuta: #{name}; parameters: #{params.inspect}")
  end


  def test
    #render text: 'cccj'
    #render file: '/home/xpuser/mauro-quaglia/studio/projects/depot/_appunti_depot/documentazione.txt'
    render xml: '<a>xxxx</a>'
   # render_to_string(text: 'slkslks')
  end

  def test2
    send_data('dkldkldk', type: 'type/text', disposition: 'inline')
  end

end