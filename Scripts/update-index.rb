#!/usr/bin/env ruby
# frozen_string_literal: true

require 'cocoapods'
require 'optparse'


options = {}
OptionParser.new do |opts|
  opts.on("--sha SHA", "SHA of the latest commit to the Specs repo", String)

  opts.on("-h", "--help", "Prints this help") do
    puts opts
    exit
  end
end.parse!(into: options)

STDERR.puts 'CDN Indexer v3'

puts "Options: #{options.inspect}"

exit 1 unless (sha = options[:sha])

response = REST.get("https://api.github.com/repos/CocoaPods/Specs/commits/#{sha}")
if !response.ok?
  puts "Failed to fetch commit: #{sha}"
  puts response.body
  exit 1
end

commit_info = JSON.parse(response.body)
pp commit_info
