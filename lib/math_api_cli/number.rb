class Number
    attr_accessor :text, :number, :found, :type

    @@all = []

    def initialize(number_hash)
        number_hash.each do |key, value|
            self.send("#{key}=", value)
        end
        self.save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end