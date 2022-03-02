require 'oystercard'

describe Oystercard do
  oystercard = Oystercard.new
  it 'new oystercard balance is 0' do
    expect(subject.balance).to eq 0
  end

  it 'increases the current amount in the oystercard' do
    subject.top_up(10)
    expect(subject.balance).to eq 10
  end
end
