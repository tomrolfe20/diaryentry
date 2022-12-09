=begin



return list of diary entries

return the diary title

return the diary contents 

return 


=end
require 'diary.rb'
require 'diary_entry.rb'

describe 'diary entry integration' do

entry1 = Array.new(200, "bananas").join(" ")
entry2 = Array.new(200, "bananas").join(" ")

it 'will add a diary entry when passed a diary entry' do
  diary = Diary.new
  diary_entry = DiaryEntry.new('my_title', 'my_contents')
  diary.add(diary_entry)
  expect(diary.instance_variable_get(:@entries)).to eq [diary_entry]
end

it 'will return the list of diary entries when all method is called' do
  diary = Diary.new
  diary_entry = DiaryEntry.new('my_title', 'my_contents')
  diary_entry2 = DiaryEntry.new('my_title2', 'my_contents2')
  diary.add(diary_entry)
  diary.add(diary_entry2)
  expect(diary.all).to eq [diary_entry, diary_entry2]
end

it 'will return a wordcount for all diary entries' do
  diary = Diary.new
  diary_entry = DiaryEntry.new('title', entry1)
  diary_entry2 = DiaryEntry.new('title2', entry2)
  diary.add(diary_entry)
  diary.add(diary_entry2)
  expect(diary.count_words).to eq 400  
end
end