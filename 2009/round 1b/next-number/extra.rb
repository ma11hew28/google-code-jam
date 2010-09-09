its = []
1.upto(T) do |case_num|
  nin = infile.gets
  nin.each_char { |c| digits.push c.to_i }
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