# coding: utf-8

require 'pp'
require 'find'
require 'fastimage'

DIRROOT=ARGV[0]
Dir.chdir(DIRROOT)
Find.find(DIRROOT) do |f|
  if File.directory?(f)
    print "dir: "
      print  "#{f}\n"
  else
    print "file: "
    print  "#{f},size:"
    print FastImage.size("#{f}")
    print "\n"
  end
end
