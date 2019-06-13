=begin
 Дан массив элементов произвольной природы. Необходимо разработать метод
max_odd(array), который определит максимальный нечетный элемент. Вернуть nil,
если таких элементов нет в переданном массиве.   
=end

def max_odd(array = nil)
return nil if array == nil
max_odd = array.select{|x| x.class == Integer or x.class == Float and x%2!=0}.max
end


p max_odd([1, 2, 3, 4, 4])
p max_odd([21.0, 2, 3, 4, 4])
p max_odd(['ololo', 2, 3, 4, [1, 2], nil])
p max_odd(%w[ololo fufufu])
p max_odd([2, 2, 4])

