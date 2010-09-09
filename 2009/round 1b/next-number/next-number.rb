# Google Code Jam
# Matt Di Pasquale
# gmail: liveloveprosper

require 'jcode'

# Open input file, ARGV[0].
infile = File.new(ARGV[0])
outfile = File.new("output.txt", "w")

# Read first line of File, infile; save ints.
T = infile.gets.to_i
nin = ''
digits = []

1.upto(T) do |case_num|
  # if 1's digit is greator than 2's digit, flip.
  # if 1's digit is less than 2's digit, 
  nin = infile.gets
  len = nin.length
  rev = nin.reverse
  digits = rev.scan(/\d/).map { |c| c.to_i }
  
  0.upto(len-1) do |i|
    if digits[i] > digits[i+1]
      # flip and sort rest
      digits[0], digits[i+1] = digits[i+1], digits[i]
      digits[i,len-1].sort!
      break
    end
    if 
      
  }
  rev[1,len-1].each_char do |c|
    if ones > c then 
  len = nin.length
  ones = nin[len-1,len-1]
  nxt = nin.to_i + 1
  is_match = true
  while(true) do
    is_match = true
    nxt.to_s.each_char do |c|
      if digits.delete(c.to_i) == nil
        is_match = false
        break
      end
    end
    if is_match == true
      outfile.puts "Case #" + case_num.to_s + ": " + nxt.to_s
      break
    else
      nxt += 1
    end
  end
end
