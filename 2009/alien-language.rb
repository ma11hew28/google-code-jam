# Google Code Jam
# Matt Di Pasquale
# gmail: liveloveprosper

# Qualification Round
# September 4, 2009
# A. Alien Language

# Open input file, ARGV[0].
infile = File.new(ARGV[0])
outfile = File.new("output.txt", "w")

# Read first line of File, infile; save ints.
LDN = infile.gets.split(' ').map { |s| s.to_i }
D = LDN[1]; N = LDN[2]

# Build array of all words in language.
language = []
1.upto(D) do
  language.push(infile.gets)
end

# Check how many words each pattern matches.
1.upto(N) do |case_num|
  pattern = infile.gets.tr('()', '[]')
  num_matches = 0
  language.each do |word|
    if word =~ /#{pattern}/ then num_matches += 1 end
  end
  outfile.puts "Case #" + case_num.to_s + ": " + num_matches.to_s
end  
