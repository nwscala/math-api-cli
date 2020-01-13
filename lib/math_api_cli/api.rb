require 'rest-client'
require 'json'
require 'pry'
require_relative "./number.rb"

# number_info = RestClient.get("http://numbersapi.com/1..100?json")
# parsed_hash = JSON.parse(number_info)
# parsed_array = []
# parsed_hash.each do |key, value|
#     parsed_array << parsed_hash["#{key}"]
# end

# binding.pry
# "test"

class API
    def get_number_fact_array
        big_number_info = RestClient.get("http://numbersapi.com/1..100?json")
        parsed_hash = JSON.parse(big_number_info)
        parsed_array = []
        
        parsed_hash.each do |key, value|
            parsed_array << parsed_hash["#{key}"]
        end

        parsed_array.each do |number_hash|
            Number.new(number_hash)
        end
    end
end

number_test = API.new.get_number_fact_array
binding.pry
"test"