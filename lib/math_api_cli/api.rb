# require 'rest-client'
# require 'json'
# require 'pry'
# require_relative "./number.rb"

# number_info = RestClient.get("http://numbersapi.com/1..100?json")
# parsed_hash = JSON.parse(number_info)
# parsed_array = []
# parsed_hash.each do |key, value|
#     parsed_array << parsed_hash["#{key}"]
# end

# binding.pry
# "test"

class API
    def get_fact_arrays
        get_trivia_array
        get_math_array
    end
    
    def get_trivia_array
        big_trivia_info = RestClient.get("http://numbersapi.com/1..100?json")
        parsed_trivia_hash = JSON.parse(big_trivia_info)
        parsed_trivia_array = []
        
        parsed_trivia_hash.each do |key, value|
            parsed_trivia_array << parsed_trivia_hash["#{key}"]
        end

        parsed_trivia_array.each do |trivia_hash|
            Number.new(trivia_hash)
        end
    end

    def get_math_array
        big_math_info = RestClient.get("http://numbersapi.com/1..100/math?json")
        parsed_math_hash = JSON.parse(big_math_info)
        parsed_math_array = []
        
        parsed_math_hash.each do |key, value|
            parsed_math_array << parsed_math_hash["#{key}"]
        end

        parsed_math_array.each do |math_hash|
            Number.new(math_hash)
        end
    end
end

# number_test = API.new.get_fact_arrays
# binding.pry
# "test"