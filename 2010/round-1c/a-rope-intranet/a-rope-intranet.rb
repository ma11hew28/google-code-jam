#!/usr/bin/env ruby

# Google Code Jam
# Matt Di Pasquale
# gmail: liveloveprosper

# Round 1B
# Start: Sunday, May 23, 2010 at 09:00 UTC
# Duration: 2hr 30min
# End: Sunday, May 23, 2010 at 11:30 UTC

# A. File Fix-It
require 'scanf.rb'
require 'rubygems'
require 'ruby-debug'
require 'pp'

infile = File.new(ARGV[0])
outfile = File.new(ARGV[0].sub("in","out"), "w")

T = infile.scanf("%d\n")[0]

1.upto(T) do |case_num|
  x_count = 0
  wires = []
  n = infile.scanf("%d\n")[0]

  # Store n wires
  n.times { wires << infile.scanf("%d %d\n") }
  
  wires.each_with_index do |w, i|
    j = i+1
    while (z = wires[j])
      if ((w[0] > z[0] && w[1] < z[1]) || (w[0] < z[0] && w[1] > z[1]))
        x_count += 1
      end
      j += 1
    end
  end

  outfile.puts "Case #" + case_num.to_s + ": " + x_count.to_s
end
