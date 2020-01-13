require 'rest-client'
require 'json'
require 'pry'

number_info = RestClient.get("numbersapi.com/5")

binding.pry
"teset"