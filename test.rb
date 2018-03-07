class Mammal
    attr_accessor :appendages

    def initialize(appendages)
        @appendages = appendages
    end
end

class Human < Mammal
    attr_accessor :name
    attr_accessor :food

    def initialize(name, food, appendages)
        super(appendages)
        @name = name
        @food = food
    end

end
