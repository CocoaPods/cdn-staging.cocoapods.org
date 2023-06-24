#!/usr/bin/env ruby
# frozen_string_literal: true

require 'cocoapods'

STDERR.puts 'CDN Indexer v2'

Dir.chdir('_specs')
site_dir = '_site'

payload = ARGV.first

puts "PAYLOAD: #{payload.inspect}"
