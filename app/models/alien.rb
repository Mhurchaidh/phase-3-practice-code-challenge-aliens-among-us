class Alien < ActiveRecord::Base
    has_many :visitations
    has_many :earthlings, through: :visitations

    def visit earthling
        Visitation.create(alien_id: self.id, earthling_id: earthling.id)
    end

    def total_light_years_traveled
        self.light_years_to_home_planet * visitations.length
    end

    def self.most_frequent_visitor
        self.all.max_by do |a| a.visitations.length end
    end

    def self.average_light_years_to_home_planet
        self.all.sum(:light_years_to_home_planet) / self.all.length
    end
end
