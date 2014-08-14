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
                        puts "------Oh no! #{@name} puked!"
                        puts "------AllergyError: #{ingredient}"
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
friends = []
monica = Person.new("Monica", ["gluten", "lactose"])
friends.push(monica)
rachel = Person.new("Rachel", ["lactose"])
friends.push(rachel)
ross = Person.new("Ross", ["scallops", "gluten"])
friends.push(ross)
joey = Person.new("Joey", [])
friends.push(joey)
chandler = Person.new("Chandler", ["scallops", "lactose", "tomatoes"])
friends.push(chandler)

puts "Five friends are going out to dinner, but they have some dietary restrictions: "
friends.each do |friend|
    friend.diet
end
puts "----"

## Foods
dishes = []
dish_names = []
pizza = ["cheese", "lactose", "crust", "gluten", "tomatoes"]
dishes.push(pizza)
dish_names.push("pizza")

pan_seared_scallops = ["scallops", "lemons", "olive oil"]
dishes.push(pan_seared_scallops)
dish_names.push("pan_seared_scallops")

caprese_salad = ["tomatoes", "olive oil", "cheese", "lactose"]
dishes.push(caprese_salad)
dish_names.push("caprese_salad")

scallops_and_spaghetti = ["scallops", "olive oil", "pasta", "gluten"]
dishes.push(scallops_and_spaghetti)
dish_names.push("scallops_and_spaghetti")

water = ["h", "h", "o"]
dishes.push(water)
dish_names.push("water")

## Can't seem to print out the names of the dishes, just the ingredients?
# possibly mixing up array and hash
# puts "On the menu there are the following dishes: "
# puts dishes.join(", ")
# for num in (0..friends.length) do
#     puts num
#     puts dishes[num]
# end

# Focus person orders
# ARGV want 0 - 4 or 0
focus_num = ARGV[0].to_i % friends.length || 0
focus_person = friends[focus_num]
puts "#{focus_person.name} is ordering for everyone"
# puts "#{focus_person.name} orders randomly, and "
order = rand(10) % 5
# puts order
puts "#{focus_person.name} orders the #{dish_names[order]}"
puts "----"

# person eats it, results
puts "Everybody eats the dish. Results?"

friends.each do |friend|
    puts "#{friend.name} eats the #{dish_names[order]}"
    friend.eat(dishes[order])
    friend.digest
end

