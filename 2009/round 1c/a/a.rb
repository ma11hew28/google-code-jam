# Google Code Jam
# Matt Di Pasquale
# gmail: liveloveprosper

require 'rubygems'
require 'ruby-debug'

# Open input file, ARGV[0].
infile = File.new(ARGV[0])
outfile = File.new("output.txt", "w")

# Read first line of File, infile; save ints.
T = infile.gets.to_i

# Start loop
1.upto(T) do |case_num|
msg = infile.gets.rstrip
len = msg.length
sym = {msg[0].chr.to_sym => 1}

if len > 1
  zero_used = false
  nxt = 2
  1.upto(len-1) do |idx|
    key = msg[idx].chr.to_sym
    if !sym.has_key?(key)
      if zero_used
        sym[key] = nxt
        nxt += 1
      else
        sym[key] = 0
        zero_used = true
      end
    end
  end
end

arr = msg.scan(/./).map { |a| sym[a.to_sym] }
# puts arr
arr.reverse!
base = [sym.length, 2].max
# debugger
0.upto(len-1) { |i| arr[i] = (base**i)*arr[i] }
sum = 0
arr.each { |i| sum += i }

outfile.puts "Case #" + case_num.to_s + ": " + sum.to_s

end
