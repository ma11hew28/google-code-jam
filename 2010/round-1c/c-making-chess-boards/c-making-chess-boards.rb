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
  boards = {}
  board = []
  
  m, n = infile.scanf("%d %d\n")
  
  m.times do |i|
    board[i] = infile.scanf("%s\n")[0].to_i(16).to_s(2)
  end

pp board
  # puts range = (p-(l*c))/(c+1)
  
  # if range <= 0
  #   lt_count = 0
  # else
  #   lt_count = diff / range
  # end
  outfile.puts "Case #" + case_num.to_s + ": " + boards.count.to_s
end
