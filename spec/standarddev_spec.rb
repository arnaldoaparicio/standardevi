require 'rspec'
require './lib/standarddev'

RSpec.describe StandardDev do 
  it 'exists' do
    standarddev = StandardDev.new

    expect(standarddev).to be_a(StandardDev)
  end

  it 'returns the Standard Deviation of a data set' do
    standarddev = StandardDev.new

    expect(standarddev.standard_deviation([26, 11, 29, 31, 21, 11])).to eq(8.80)
  end
end