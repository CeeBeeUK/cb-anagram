require 'rails_helper'

describe Entry, :type => :model do
  let(:entry) { Entry.new( id: 1, word: 'hi', array: "['h','i']" ) }

  it 'should pass default build' do
    expect(entry).to be_valid
  end
  it 'should be invalid if word is empty' do
    entry.word=nil
    expect(entry).to be_invalid
  end
  it 'should be invalid if array is empty' do
    entry.word=nil
    expect(entry).to be_invalid
  end

end
