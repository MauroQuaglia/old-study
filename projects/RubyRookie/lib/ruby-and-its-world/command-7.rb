require 'rbconfig'
include RbConfig

CONFIG.keys.sort.each do |key|
	puts "#{key}: #{CONFIG[key]}"
end
