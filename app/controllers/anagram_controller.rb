class AnagramController < ApplicationController

  def index
  end

  def search
    words = params['wordlist'].split(',')
    result={}
    words.each do |word|
      matches = get_matches(get_dictionary, word)

      result["#{word}"] = matches
    end

    render :text => result.to_json
  end

  def help
    DictionaryService.new()
    render :text => 'help'
  end
end

private

def word_list_params
  params.require(:wordlist)
end

def get_dictionary
  word_source = File.join('lib','assets','words.txt')
  dict = File.open(word_source, 'r'){|file| file.readlines.collect{|line| line.chomp}}
  dict
end


def get_matches(dictionary, word)
  matches = []
  a = word.chars.sort
  dictionary.each do |w|
    test_word = w.chars.sort
    matches << w if test_word == a && w!=word
  end
  matches
end
