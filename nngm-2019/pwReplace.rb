#!/usr/bin/env ruby
o = Hash.new([])
w = STDIN.read.partition("Contents").last.partition('End of The Project').first.downcase.split(/\s+/)
w.each_with_index { |n,i| o[n] += [w[i+1]]; o[n].compact! }
puts w.reduce(w.first) { |m,n| m += ' '+ o[n].sample }
