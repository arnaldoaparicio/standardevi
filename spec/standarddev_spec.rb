require 'rspec'
require './lib/standarddev'

RSpec.describe StandardDev do
  it 'exists' do
    ssd = StandardDev.new([26, 11, 29, 31, 21, 11])

    expect(ssd).to be_a(StandardDev)
  end

  it 'returns the Standard Deviation of a data set' do
    ssd1 = StandardDev.new([26, 11, 29, 31, 21, 11])
    ssd2 = StandardDev.new([23, 20, 14, 35, 28])
    ssd3 = StandardDev.new([17, 22, 40, 54, 73, 101])
    ssd4 = StandardDev.new([1175, 1189, 1229, 1349, 1398, 1450])

    expect(ssd1.standard_deviation).to eq(8.80)
    expect(ssd2.standard_deviation).to eq(7.97)
    expect(ssd3.standard_deviation).to eq(31.97)
    expect(ssd4.standard_deviation).to eq(116.17)
  end

  it 'returns the mean of a data set' do
    ssd = StandardDev.new([26, 11, 29, 31, 21, 11])

    expect(ssd.mean).to eq(21.5)
  end

  it 'returns the deviation to each respective number in a set' do
    ssd = StandardDev.new([26, 11, 29, 31, 21, 11])

    expect(ssd.deviation_list).to eq([4.5, -10.5, 7.5, 9.5, -0.5, -10.5])
  end

  it 'squares each deviation' do
    ssd = StandardDev.new([26, 11, 29, 31, 21, 11])

    expect(ssd.squared_deviations).to eq([20.25, 110.25, 56.25, 90.25, 0.25, 110.25])
  end

  it 'adds all of the deviations that were squared' do
    ssd = StandardDev.new([26, 11, 29, 31, 21, 11])

    expect(ssd.squared_deviations_sum).to eq(387.5)
  end

  it 'returns the correct denominator for the Formula of Sample Standard Deviation' do
    ssd = StandardDev.new([26, 11, 29, 31, 21, 11])

    expect(ssd.sample_standard_deviation_denominator).to eq(5)
  end
end
