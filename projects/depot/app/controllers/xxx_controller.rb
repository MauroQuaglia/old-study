class XxxController < ApplicationController

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

end