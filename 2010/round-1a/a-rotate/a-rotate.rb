#!/usr/bin/env ruby

# Google Code Jam
# Matt Di Pasquale
# gmail: liveloveprosper

# Round 1A
# Start: Saturday, May 22, 2010 at 01:00 UTC
# Duration: 2hr 30min
# End: Saturday, May 22, 2010 at 03:30 UTC

# A. Rotate
require 'scanf.rb'
require 'rubygems'
require 'ruby-debug'
require 'pp'

infile = File.new(ARGV[0])
outfile = File.new(ARGV[0].sub("in", "out"), "w") # "w" truncates file

T = infile.scanf("%d\n")[0]

1.upto(T) do |case_num|
  n, k = infile.scanf("%d %d\n")
  table = Array.new(n)
  line_format = "%c"
  last = n-1
  last.times { line_format += " %c" }
  line_format += "\n"

  n.times do |tr|
    line = infile.scanf(line_format)
    row = Array.new(n)
    rri = last
    last.downto(0) do |rli|
      if line[rli] != "."
        row[rri] = line[rli]
        rri -= 1
      end
    end

    table[tr] = row
  end
  pp table
  outfile.puts "Case #" + case_num.to_s + ": " + "answer"
end
