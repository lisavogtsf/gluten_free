# Lisa Vogt
# August 13, 2014
# * Create a Person class. A person will have a stomach and allergies
# * Create a method that allows the person to eat and add arrays of ingredients to their stomachs
# * If a food array contains a known allergy reject the food. 
# When a person attempts to eat a food they are allergic to, tell them `AllergyError`

# new classes of people who share allergies?

class Person

    attr_accessor :stomach
    attr_accessor :name
    attr_accessor :allergies

    def initialize(name, allergies)
        @name = name
        @allergies = allergies
        @stomach = []
    end

    def eat(food)
        # add arrays of food to stomach
        # food will remain in the stomach after it's eaten
        # unless there's an allergy
    end

    def digest
        # a different method to test for allergies?
    end

end


lisa = Person.new("Lisa", ["eggplant"])
puts lisa
puts lisa.name
puts lisa.allergies