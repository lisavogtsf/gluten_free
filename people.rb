# Lisa Vogt
# August 13, 2014
# * Create a Person class. A person will have a stomach and allergies
# * Create a method that allows the person to eat and add arrays of ingredients to their stomachs
# * If a food array contains a known allergy reject the food. 
# When a person attempts to eat a food they are allergic to, tell them `AllergyError`
# Bonus: When a person attempts to eat a food they are allergic to, ... remove ALL the food from the person's stomach before telling them AllergyError

# Run at the command line, $ ruby people.rb name

class Person

    attr_accessor :name, :allergies, :stomach

    def initialize(name, allergies)
        @name = name
        @allergies = allergies
        @stomach = []
    end

    def diet
        if @allergies.length == 0
            puts "#{@name} eats everything"
        else
            puts "#{@name} is allergic to #{@allergies.join(" and ")}"
        end
    end

    def eat(food)
        # add arrays of food to stomach
        @stomach.push(food)
    end

    def digest
        # #works on current contents of stomach
        # puts "Digesting ..."
        # puts self.stomach
        stomach.each do |food|
            # puts food
            food.each do |ingredient|
                # puts "Just an ingredient: #{ingredient}"
                allergies.each do |allergen|
                    if ingredient == allergen
                        @stomach = []
                        puts "AllergyError: #{ingredient}"
                        # need to empty stomach and break loops
                        break
                    end
                end
            end
        end
    end
end

## Tester text
## People

# show name
# #{lisa.allergies}"
# show allergies
# puts lisa.allergies
# show stomach contents
# puts lisa.stomach

jane = Person.new("Jane", ["gluten", "lactose"])
puts "#{jane.name} is allergic to #{jane.allergies.join(" and ")} intollerant"

rachel = Person.new("Rachel", ["lactose"])
puts "#{rachel.name} is allergic to #{rachel.allergies.join(" and ")}"

pierre = Person.new("Pierre", ["scallops", "gluten"])
puts "#{pierre.name} is allergic to #{pierre.allergies.join(" and ")}"

lisa = Person.new("Lisa", [])
lisa.diet


## Foods
pizza = ["cheese", "lactose", "crust", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "olive oil"]
caprese_salad = ["tomatoes", "olive oil", "cheese", "lactose"]
scallops_and_spaghetti = ["scallops", "olive oil", "pasta", "gluten"]
water = ["h", "h", "o"]



# # puts "Lisa eats stuff"
# # puts lisa.stomach
# # lisa.eat(water)
# # lisa.eat(pizza)
# # lisa.digest
# # puts lisa.stomach

# puts "jane eats pizza"
# jane.eat(pizza)
# puts "jane digesting"
# jane.digest