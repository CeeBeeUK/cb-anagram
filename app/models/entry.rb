class Entry < ActiveRecord::Base
  validates :word, presence:true
  validates :array, presence:true
end
