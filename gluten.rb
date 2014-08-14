pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]
crayon = ["wax", "rainbows"]


class Person
  attr_accessor :kind
  def initialize(kind)
    @kind = kind
    @state = "hungry"
  end
  
  def eat(food)
    if @state == "hungry"
      puts "THIS IS THE BEST FOOD EVER!"
      puts "(#{@name} has eaten #{food})"
    else
      puts "You're stuffed"
    end
    self
  end
  
  def full
    @state = "full"
  end
  
  def hungry
    @state = "hungry"
  end
end

class Stomach < Person
    @@banned_foods = /person|wax|rainbows|pizza|people|human|humans|woman|woman|children|child|baby|babies/i
    def self.banned_foods
    	@@banned_foods
    end
    def initialize(age, gender, name)
        # call the super initialize
        super("person")
        @age = age
        @gender = gender
        @name = name
    end

    # stop cannibalism!
    def eat(food)
      unless @@banned_foods.match(food)
        super(food)
      else
        puts "(Alergy Error! Going into shock! Vomiting! Get to hospital!)"
      end
      self
    end
end