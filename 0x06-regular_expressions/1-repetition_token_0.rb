#!/usr/bin/env ruby
# Match "hbttn, hbtttn, hbttttn, hbtttttn"

puts ARGV[0].scan(/hb+t{2,5}n/).join
