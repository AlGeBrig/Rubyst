module Weight_passing
    def self_weight?(kg)
        if kg > 2000 ? true : false
        end
    end

end

class Vehicle
    @@number_of_vehicles = 0
    
    def initialize(year = 2004, model = "hyundao")
        @year = year.to_i
        @model = model
        @@number_of_vehicles += 1
    end

    def number_of_vehicles
        puts "number_of_vehicles = #{@@number_of_vehicles}"
    end

    
    def weight(kg)
        @@kg = kg
    end

    def speed(kmh)
        @kmh = kmh
    end
end

class MyCar < Vehicle
    include Weight_passing
    YEARS = 15

    def age
        puts "Age of your #{self.model} is #{car_age} years"
    end

    def car_age
        Time.now.year - self.year
    end
end

class MyTruck < Vehicle
    YEARS = 10
end

sonata = MyCar.new('2005', 'hyundai sonata')
tundra = MyTruck.new

puts sonata.age