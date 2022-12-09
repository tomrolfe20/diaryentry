require 'diary_entry.rb'

entry = Array.new(200, "bananas").join(" ")

describe DiaryEntry do

  it 'will return the title of the diary entry' do
    diary_entry = DiaryEntry.new('my_title', entry)
    expect(diary_entry.title).to eq 'my_title'
  end
end