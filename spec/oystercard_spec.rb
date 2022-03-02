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
 
  it 'raise an error if limit is reached' do
    expect{subject.top_up(91)}.to raise_error
  end

  it 'lets us deduct money from the card' do
    subject.top_up(20)
    subject.deduct(10)
    expect(subject.balance).to eq 10
  end


end
