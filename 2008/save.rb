# Google Code Jam
# Matt Di Pasquale
# gmail: liveloveprosper

# Qualification Round
# July 17, 2008
# A. Saving the Universe

# Open input file, ARGV[0].
infile = File.new(ARGV[0])
outfile = File.new("output.txt", "w")

# Read first line of File, infile; save as num_cases, N.
num_cases = infile.gets.to_i

# Repeat code for each case, n.
1.upto(num_cases) do |case_num|
  # Initialize number of switches.
  switches = 0;

  # read next line; save as num_search_engines, S.
  num_search_engines = infile.gets.to_i

  search_engines = {}
  # read next S lines.
  # store each search-engine string as a symbol key in hash, search_engines.
  # set all the values to TRUE
  num_search_engines.times { search_engines[infile.gets.chomp.to_sym] = TRUE }

  # read next line; save as num_queries, Q.
  num_queries = infile.gets.to_i

  # read next Q lines.
  num_queries.times do
    # Read query and set associated search engine to FALSE.
    search_engines[query=infile.gets.chomp.to_sym] = FALSE

    # Once all values in search_engines are FALSE, switch, reset.
    if !search_engines.has_value?(TRUE)
      switches += 1
      search_engines.each_key {|key| search_engines[key] = TRUE }
      search_engines[query] = FALSE
    end
  end
  # Output to outfile.
  outfile.puts "Case #" + case_num.to_s + ": " + switches.to_s
end