require 'fileutils'

files = Dir['*~']
FileUtils::rm(files, verbose: true)