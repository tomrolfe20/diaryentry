require 'diary_entry.rb'

entry = Array.new(200, "bananas").join(" ")

describe DiaryEntry do

  it 'will return the title of the diary entry' do
    diary_entry = DiaryEntry.new('my_title', entry)
    expect(diary_entry.title).to eq 'my_title'
  end

  it 'return an integer representing an estimate of the reading time in minutes for entire diary' do
    diary_entry = DiaryEntry.new('my_title', entry)
    expect(diary_entry.reading_time(200)).to eq 1
  end

  
end