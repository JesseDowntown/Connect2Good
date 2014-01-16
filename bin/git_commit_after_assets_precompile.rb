#!/usr/bin/env ruby

puts `git status`


if `git status`.include?('nothing to commit')
  puts "nothing to commit"
else
  puts "something to commit"
end