require 'test/unit'
require_relative 'show'

class AdvancedSettingsTest < Test::Unit::TestCase

  def setup
   @show = Show.new
  end

  def test_1
    @show.regex('xxx', /xxx/)
    @show.regex('xXx', /xxx/)
    @show.regex('xXx', /xxx/i)
    @show.regex('xXx', /(?i)xxx/)
    @show.regex('xXx', /(?-i)xxx/)
  end

end