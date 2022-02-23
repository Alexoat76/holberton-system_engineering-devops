#!/usr/bin/env ruby
# Match "htn, hbtn" not "hbbtn, hbbbtn"

puts ARGV[0].scan(/hb?tn/).join
