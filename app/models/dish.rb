class Dish < ActiveRecord::Base
    has_many :dishtags
    has_many :tags, through: :dishtags
    belongs_to :restaurant

    validates...

    def self.names
        self.all
    end 

    def self.max_tags
        self.where
    end

    def self.untagged
    end

    def self.average_tag_count
    end

    def tag_count
    end

    def tag_names
    end

    def most_popular_tag
    end 
end 

# Dish.names - all the names of dishes
# Dish.max_tags - single dish with the most tags
# Dish.untagged - dishes with no tags
# Dish.average_tag_count - average tag count for dishes
# Dish#tag_count - number of tags for a dish
# Dish#tag_names - names of the tags on a dish
# Dish#most_popular_tag - most widely used tag for a dish