# Table of contents
title = "Table of Contents"
contents = [
  ["Getting Started", "1"],
  ["Numbers", "9"],
  ["Letters", "13"]]

puts title.center(50)
puts ""

chap_no = 1
contents.each do |chapter|
  title = chapter[0]
  page = chapter[1]

  left_aligned = "Chapter #{chap_no.to_s}: #{title}"
  right_aligned = "Page #{page}"

  puts left_aligned.ljust(30) + right_aligned.rjust(20)
  
  chap_no += 1
end
