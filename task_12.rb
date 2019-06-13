=begin
Создайте класс JellyBean, расширяющий класс Dessert (из Упражнения 11) новыми
геттерами и сеттерами для атрибута flavor. Измените метод delicious? таким
образом, чтобы он возвращал false только в тех случаях, когда flavor равняется
«black licorice».
=end

class Dessert
    attr_accessor:name, :calories
   def initialize(name, calories) 
       @name = name
       @calories = calories
    end
    
    def healthy?
        return true if self.calories <200
            return false
        
    end
    
    def delicious?
        return true
    end
end

class JellyBean < Dessert
    attr_accessor:flavor
    def initialize(name, calories, flavor)
    super(name, calories)
        @flavor = flavor
    end

   def delicious?
    return false  if self.flavor == "black licorice"
          super
   end
end
    




p = JellyBean.new("Napoleo", 550, "black licorice")
puts p.delicious?
p.flavor = "Nothing"
puts p.delicious?
p p.name

