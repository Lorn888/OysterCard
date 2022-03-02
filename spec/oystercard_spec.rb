require 'oystercard'

describe Oystercard do
  oystercard = Oystercard.new
  it 'new oystercard balance is 0' do
    expect(subject.balance).to eq 0
  end  
end
