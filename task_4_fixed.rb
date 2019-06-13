=begin
Дан массив целых чисел. Необходимо разработать метод sort_array(array),который
поменяет местами минимальные и максимальные элементы массива, а также
добавит в конец массива одно минимальное значение из него.
=end


def sort_array(array = nil)
return nil if array == nil
min = array.min
max = array.max
array.map{|x|
case x
when min
x = max
when max
x = min
else
x
end
}<<min
end


p sort_array([2, 4, 6, 8])
p sort_array([])
p sort_array([1])
p sort_array([1, 2, 1, 3])