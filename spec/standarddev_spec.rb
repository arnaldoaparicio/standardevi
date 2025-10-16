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
    expect(standarddev.standard_deviation([23, 20, 14, 35, 28])).to eq(7.97)
    expect(standarddev.standard_deviation([17, 22, 40, 54, 73, 101])).to eq(31.97)
    expect(standarddev.standard_deviation([1175, 1189, 1229, 1349, 1398, 1450])).to eq(116.17)
  end
end