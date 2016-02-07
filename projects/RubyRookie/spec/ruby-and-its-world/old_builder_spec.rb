 gem 'builder', '= 2.1.2'
 require 'builder'

RSpec.describe 'Old version of builder' do
	 
	it 'can be loaded in this file' do
		

puts Gem.latest_spec_for('builder').version.to_s


	end

end 