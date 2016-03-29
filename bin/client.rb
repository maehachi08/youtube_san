#!/usr/bin/env ruby
$: << File.expand_path("#{File.dirname __FILE__}/lib")
require 'Youtube_san'
require 'yaml'

c = YoutubeSan::Channel.new
puts c.channel.to_yaml


v = YoutubeSan::Videos.new
puts v.get_by_year(2016).to_yaml
puts v.get_by_latest.to_yaml
