#!/usr/bin/env ruby

# Google Code Jam
# Matt Di Pasquale
# gmail: liveloveprosper

# Round 1C
# Start: Sunday, May 23, 2010 at 09:00 UTC
# Duration: 2hr 30min
# End: Sunday, May 23, 2010 at 11:30 UTC

# B. Load Testing
require 'scanf.rb'
require 'rubygems'
require 'ruby-debug'
require 'pp'

infile = File.new(ARGV[0])
outfile = File.new(ARGV[0].sub("in","out"), "w")

T = infile.scanf("%d\n")[0]

1.upto(T) do |case_num|
  lt_count = 0
  wires = []
  l, p, c = infile.scanf("%d %d %d\n")

  puts "l " + l.to_s
  puts "p " + p.to_s
  puts "c " + c.to_s
  
  t = p
  
  array = [t]

  while t > l
    t = (t+1) / c
    array << t
  end
  pp array
  diff = p - l
  
  # puts range = (p-(l*c))/(c+1)
  
  # if range <= 0
  #   lt_count = 0
  # else
  #   lt_count = diff / range
  # end
  outfile.puts "Case #" + case_num.to_s + ": " + lt_count.to_s
end
