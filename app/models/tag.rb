class Tag < ActiveRecord::Base
    has_many :dishtags
    has_many :dishes, through: :dishtags
    

    def self.most_common
    end 

    def self.least_common
    end

    def self.unused
    end

    def self.uncommon
    end 

    def self.popular
    end

    def restaurants
    end

    def top_restaurant
    end

    def dish_count
    end 
end 

# Tag.most_common - tag with the most associated dishes
# Tag.least_common - tag with the fewest associated dishes
# Tag.unused - all tags that haven't been used
# Tag.uncommon - all tags that have been used fewer than 5 times
# Tag.popular - top 5 tags by use
# Tag#restaurants - restaurants that have this tag on at least one dish
# Tag#top_restaurant - restaurant that uses this tag the most
# Tag#dish_count - how many dishes use this tag
