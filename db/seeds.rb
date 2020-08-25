puts "deleting all instances"

Dish.destroy_all
Dishtag.destroy_all
Restaurant.destroy_all
Tag.destroy_all

spicy = Tag.create(name:"Spicy")
vegetarian = Tag.create(name:"Vegetarian")
soupy = Tag.create(name:"Soupy")
greek = Tag.create(name:"Greek")
italian = Tag.create(name:"Italian")
cheese = Tag.create(name:"Cheese")
indian = Tag.create(name:"Indian")
american = Tag.create(name:"American")
fast_food = Tag.create(name:"FastFood")
steak = Tag.create(name:"Steak")
paleo = Tag.create(name:"Paleo")



20.times do (
    Restaurant.create(name:Faker::Restaurant.name)
)
end 




10.times do (
    Dish.create(name:Faker::Food.dish, restaurant: Restaurant.first)
    )
end 
10.times do (
    Dish.create(name:Faker::Food.dish, restaurant: Restaurant.second)
    )
end 
10.times do (
    Dish.create(name:Faker::Food.dish, restaurant: Restaurant.third)
    )
end 
10.times do (
    Dish.create(name:Faker::Food.dish, restaurant: Restaurant.fourth)
    )
end 
10.times do (
    Dish.create(name:Faker::Food.dish, restaurant: Restaurant.fifth)
    )
end 
10.times do (
    Dish.create(name:Faker::Food.dish, restaurant: Restaurant.sixth)
    )
end 




Dishtag.create(dish: Dish.first, tag: Tag.first)
Dishtag.create(dish: Dish.first, tag: Tag.first)
Dishtag.create(dish: Dish.first, tag: Tag.first)
Dishtag.create(dish: Dish.first, tag: Tag.first)
Dishtag.create(dish: Dish.first, tag: Tag.first)
Dishtag.create(dish: Dish.first, tag: Tag.first)



# Seeds

# Create a seeds file that creates:

# 20 restaurants.
# Each restaurant should have 10 dishes
# Each Dish should have 3 tags
# There should be only 10 or 15 tags, with names like 'Spicy' and 'Vegetarian'