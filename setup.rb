#!/usr/bin/ruby
require 'pathname'
dh = Dir.open( "." )
dir = Pathname.new( __FILE__ ).realpath.dirname
while file = dh.read
  next if file =~ /^\.+$/
  next if file == __FILE__
  next if file == 'README'
  next if file == '.git'
  next if file == 'localrc'
  puts "Linking #{dir}/#{file} ~/.#{file}"
  `ln -i -s #{dir}/#{file} ~/.#{file}`
end
