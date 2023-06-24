#!/usr/bin/env ruby
# frozen_string_literal: true

require 'cocoapods'
require 'optparse'


options = {}
OptionParser.new do |opts|
  opts.on("--pod POD_NAME", "The name of the Pod to update", String)
  opts.on("--version POD_VERSION", "The version of the Pod to update", String)
  opts.on("--action ACTION", "The action to perform", String)
  opts.on("--path PODSPEC_PATH", "The relative path to the podspec in the master spec repo", String)

  opts.on("-h", "--help", "Prints this help") do
    puts opts
    exit
  end
end.parse!(into: options)

STDERR.puts 'CDN Indexer v3'

puts "Options: #{options.inspect}"
