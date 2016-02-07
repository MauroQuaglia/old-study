gem 'builder', '2.1.1'
require 'builder'

xml = Builder:XmlMarkup.new(target: STDOUT, indent: 2)
xml.person(type: 'programmer') do
	xml.name do
		xml.first('Dave')
	end
end