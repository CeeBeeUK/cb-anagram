class AnagramController < ApplicationController

  def index
  end

  def search
    words = params['wordlist'].split(',')
    puts words
    render :text => words.to_json
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