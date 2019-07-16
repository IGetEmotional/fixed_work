=begin
Дан массив array и числовой диапазон range. Разработайте метод coincidence(array,
range) для определения элементов из массива array, значения которых входят в
указанный диапазон. Если не передан хотя бы один из параметров, то должен
вернуться пустой массив.
=end

def coincidence(array = [],range = [])
  array.select{ |x| range.include?(x) }
end


p coincidence([1,2,3,4,5], (3..5))
p coincidence([nil, 1, 'foo', 4, 2, 2.5], (1..3))
p coincidence()
