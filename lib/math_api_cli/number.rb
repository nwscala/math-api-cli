class Number
    attr_accessor :text, :number, :found, :type

    @@trivia = []
    @@math = []

    def initialize(number_hash)
        number_hash.each do |key, value|
            self.send("#{key}=", value)
        end
        self.save
    end

    def save
        if self.type == "trivia"
            @@trivia << self
        elsif self.type == "math"
            @@math << self
        end
    end

    def self.trivia
        @@trivia
    end

    def self.math
        @@math
    end
end