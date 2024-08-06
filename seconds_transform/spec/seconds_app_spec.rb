require 'seconds_app'

describe 'Simple tests' do
  it 'Tests seconds' do
    expect(seconds_transform(60)).to eq("1 minute")
    expect(seconds_transform(59)).to eq("59 seconds")
  end

  it 'Tests seconds to minutes' do
    expect(seconds_transform(91)).to eq("1 minutes and 31 seconds")
  end

  it 'tests seconds to hours' do
    expect(seconds_transform(3662)).to eq("1 hour, 1 minutes and 2 seconds")
    expect(seconds_transform(50000)).to eq('13 hour, 53 minutes and 20 seconds')
  end

  it 'Tests seconds to days' do
    expect(seconds_transform(31000011)).to eq("358 days, 19 hour, 6 minutes and 51 seconds")
    expect(seconds_transform(400356)).to eq('4 days, 15 hour, 12 minutes and 36 seconds')
  end

end
