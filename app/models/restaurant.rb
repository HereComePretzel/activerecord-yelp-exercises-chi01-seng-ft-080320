class Restaurant < ActiveRecord::Base
    has_many :dishes
    has_many :dishtags, through: :dishes
    has_many :tags, through: :dishtags

    def self.mcdonalds
        self.find_by(:name => “McDonalds”)
    end

    def self.tenth
        self.find(10)
    end 

    def self.with_long_names
        self.where("LENGTH(name) > 12")
    end 

    def self.max_dishes
        self.where{|instance| instance.count}
    end

    def self.focused
        self.where(Dish.count < 5)
    end

    def self.large_menu
        self.where()

    end

    def self.vegetarian

    end

    def self.name_like(name)

    end

    def self.name_not_like(name)

    end 


end 

# Restaurant.mcdonalds - find the restaurant with the name 'McDonalds'.
# Restaurant.tenth - find the tenth restaurant
# Restaurant.with_long_names - find all the restaurants with names longer than 12 characters
# Restaurant.max_dishes - find the restaurant with the most dishes
# Restaurant.focused - find all the restaurants with fewer than 5 dishes
# Restaurant.large_menu - find all the restaurants with more than 20 dishes
# Restaurant.vegetarian - all restaurants where all of the dishes are tagged vegetarian
# Restaurant.name_like(name) - all restaurants where the name is like the name passed in
# Restaurant.name_not_like(name) - all restaurants where the name is not like the name passed in