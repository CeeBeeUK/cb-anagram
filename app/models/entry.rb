class Entry < ActiveRecord::Base
  validates :word, presence:true
  validates :wrd_array, presence:true
end
