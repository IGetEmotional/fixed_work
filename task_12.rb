=begin
Создайте класс JellyBean, расширяющий класс Dessert (из Упражнения 11) новыми
геттерами и сеттерами для атрибута flavor. Измените метод delicious? таким
образом, чтобы он возвращал false только в тех случаях, когда flavor равняется
«black licorice».
=end

class Dessert
  attr_accessor :name, :calories
  def initialize(name, calories) 
    @name = name
    @calories = calories
  end
    
  def healthy?
    calories < 200
  end
    
  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_accessor:flavor
  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end

  def delicious?
    flavor != "black licorice"
  end
end
    
p = JellyBean.new("Napoleo", 550, "black licorice")
p p.delicious?
p.flavor = "Nothing"
p p.delicious?
p p.name

