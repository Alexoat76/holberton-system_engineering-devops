#!/usr/bin/env ruby
# Match "hbn, hbtn - hbttttn" not "hbon"

puts ARGV[0].scan(/hbt*n/).join
