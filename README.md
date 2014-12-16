# Build status
[![Build Status](https://travis-ci.org/CeeBeeUK/cb-anagram.svg)](https://travis-ci.org/CeeBeeUK/cb-anagram)
[![Code Climate](https://codeclimate.com/github/CeeBeeUK/cb-anagram/badges/gpa.svg)](https://codeclimate.com/github/CeeBeeUK/cb-anagram)
[![Test Coverage](https://codeclimate.com/github/CeeBeeUK/cb-anagram/badges/coverage.svg)](https://codeclimate.com/github/CeeBeeUK/cb-anagram)

# Task board
[![Stories in Ready](https://badge.waffle.io/CeeBeeUK/cb-anagram.svg?label=ready&title=Ready)](http://waffle.io/CeeBeeUK/cb-anagram)

# Anagram Finder
Ruby project to return anagrams of words into the path to return a JSON object of matches

e.g. http://myapp.com/stop,start

# Running demo
* http://cb-anagram.herokuapp.com/

# Pre-requisites
* Ruby installed (built with 2.1.5)
* PostgreSQL 9.3.5 (server running)

# Configuring
* run the following commands
* $`git clone https://github.com/CeeBeeUK/cb-anagram.git`
* $`cd cb-anagram`
* $`bundle install`
* $`rake configure:initial`
* run $`rails s` to start the webserver
* open http://localhost:3000/ and start entering words

# Details
This was implemented using the \*nix word list (`/usr/dict/words`) to allow portability and remove reliance
on a web based word list service, this reduced the number of words available, but increased reliability.