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
        @stomach.push(food)
        # self
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

# # lisa = Person.new("Lisa", ["eggplant"])
# kim = Person.new("Kim", ["gluten", "veal"])
# # # show name
# # puts lisa.name
# # # show allergies
# # puts lisa.allergies
# # # show stomach contents
# # puts lisa.stomach

# pizza = ["cheese", "gluten", "tomatoes"]
# pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
# water = ["h", "h", "o"]

# # puts "Lisa eats stuff"
# # puts lisa.stomach
# # lisa.eat(water)
# # lisa.eat(pizza)
# # lisa.digest
# # puts lisa.stomach

# puts "Kim eats pizza"
# kim.eat(pizza)
# puts "Kim digesting"
# kim.digest
# puts "Kim ate something allergic, how is her stomach? #{kim.stomach}"