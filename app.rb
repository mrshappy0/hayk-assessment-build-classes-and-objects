require 'pry'

class Building
    attr_accessor :name, :number_of_tenants, :number_of_floors
    attr_reader :address
    @@buildings = []

    def initialize name, address, number_of_floors, number_of_tenants
        @name = name
        @address = address
        @number_of_floors = number_of_floors
        @number_of_tenants = number_of_tenants
        @@buildings << self  
    end
    
    def self.all_buildings
        @@buildings
    end

    def placard
        p "#{@name}: #{@address}"
    end
    
    # A building should have a method returns the average number of tenants per floor
    # def self.ave_num_ten_per_floor
    #     binding.pry
    # end
    
    # def self.average_number_tenants
    #     sum = @@buildings.reduce(0){|sum, building| sum = sum + building.number_of_tenants}
    #     average_tenants = sum.to_f / @@buildings.count
    #     average_number_tenants.round
    # end

end

#ave tenat per/floor = 200/14 => 15
tower = [
Building.new("new tower", "12417 W 2nd Pl", 14, 200),
Building.new("cool guy church", "123 W Bob Pl", 1, 18)
]


#ave tenat per/floor = 18/1 => 18
# church = Building.new("cool guy church", "123 W Bob Pl", 1, 18)


binding.pry