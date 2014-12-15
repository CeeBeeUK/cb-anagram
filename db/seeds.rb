# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'Starting import'
word_source = File.join('lib','assets','words.txt')
dictionary = File.open(word_source, 'r'){|file| file.readlines.collect{|line| line.chomp}}
dictionary.each do |w|
  Entry.create!(word: w, array: w.chars.sort)
end
