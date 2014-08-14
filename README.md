#Lab - August 13, 2014

###Prerequisites:  
- Ruby
- Hashes & Arrays
- Objects & Classes

###Objectives:
Work with classes, class variables, conditions

====

* Create a Person class. A person will have a stomach and allergies
* Create a method that allows the person to eat and add arrays of food to their stomachs
* If a food array contains a known allergy reject the food.

```
class Person
end

```


```
pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]
```

When a person attempts to eat a food they are allergic to, tell them `AllergyError`

**Bonus:** When a person attempts to eat a food they are allergic to, ... remove ALL the food from the person's stomach before telling them `AllergyError`
