class AnagramController < ApplicationController

  def index
  end

  def search
    words = params['wordlist'].split(',')
    result={}
    words.each do |word|
      word = word.strip
      result["#{word}"] = get_matches(word.strip)
    end
    render :json => result.to_json
  end
end

private

def get_matches(word)
  matches = []
  results = Entry.where('wrd_array = :search AND word != :orig', search: word.chars.sort.to_s, orig: word)
  results.each do |r|
    matches << r.word
  end
  matches
end
