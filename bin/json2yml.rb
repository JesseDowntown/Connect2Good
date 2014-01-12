#!/usr/bin/env ruby

require 'json'
require 'yaml'

def file_name
  file_name = Dir.glob("public/assets/*manifest*.json").first
end

def file_string(file_name)
  file_string = ''
  File.open(file_name, "r") do |infile|
      while (line = infile.gets)
        file_string << line
      end
  end
  file_string
end

def json_hash(file_string)
  JSON.parse(file_string)
end

def write_yml(yml_string)
  file_name = 'public/assets/manifest.yml'
  puts "writing yml file: #{file_name}"
  File.open(file_name, 'w') { |file| file.write(yml_string) }
end


######## MAIN #########
puts "json manifest: #{file_name}"
file_string = file_string(file_name)
yml_string = json_hash(file_string).to_yaml
write_yml(yml_string)
