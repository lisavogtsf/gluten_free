# Lisa Vogt
# August 13, 2014
# * Create a Person class. A person will have a stomach and allergies
# * Create a method that allows the person to eat and add arrays of ingredients to their stomachs
# * If a food array contains a known allergy reject the food. 
# When a person attempts to eat a food they are allergic to, tell them `AllergyError`

# pizza = ["cheese", "gluten", "tomatoes"]
# pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
# water = ["h", "h", "o"]


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
        # food is the name of an array
        stomach.push(food)
        # self
    end

    def digest
        # a different method to test for allergies?
    end

end


lisa = Person.new("Lisa", ["eggplant"])
# # show name
# puts lisa.name
# # show allergies
# puts lisa.allergies
# # show stomach contents
# puts lisa.stomach

pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]

puts "Lisa eats almonds"
lisa.eat(["almonds"])
puts lisa.stomach
lisa.eat(pizza)
lisa.eat(water)
puts lisa.stomach