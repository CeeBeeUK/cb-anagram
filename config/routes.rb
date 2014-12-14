Rails.application.routes.draw do

  get '/', to: 'anagram#index', as: :root

  get '/anagram/index'

  get '/:wordlist', to: 'anagram#search'
end
