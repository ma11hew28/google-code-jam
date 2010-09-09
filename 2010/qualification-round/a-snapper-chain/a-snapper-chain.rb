#!/usr/bin/env ruby

# Google Code Jam
# Matt Di Pasquale
# gmail: liveloveprosper

# Qualification Round
# Start: Friday, May 7, 2010 at 23:00 UTC
# Duration: 24 hours
# End: Saturday, May 8, 2010 at 23:00 UTC

# A. Snapper Chain
require 'scanf.rb'

def on?(n, k)
  (k+1) & (2**n - 1) != 0 ? "OFF" : "ON"
end

infile = File.new(ARGV[0])
outfile = File.new(ARGV[0].sub("in","out"), "w")

T = infile.scanf("%d\n")[0]

1.upto(T) do |case_num|
  n, k = infile.scanf("%d %d\n")
  outfile.puts "Case #" + case_num.to_s + ": " + on?(n, k)
end
