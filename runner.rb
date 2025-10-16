require 'rspec'
require './lib/standarddev'

new_array = ARGV.map(&:to_i)

sd = StandardDev.new(new_array)

p "Sample Standard deviation is #{sd.standard_deviation}"
