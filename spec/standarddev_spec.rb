require 'rspec'
require './lib/standarddev'

RSpec.describe StandardDev do 
  it 'exists' do
    standarddev = StandardDev.new

    expect(standarddev).to be_a(StandardDev)
  end
end