=begin
Необходимо разработать метод connect_hashes(hash1, hash2), который соединит
два переданных хеша, значениями ключей в которых являются числа, и вернет
новый хэш, полученный по следующим правилам:
• приоритетными являются ключи того хэша, сумма значений ключей
которого больше (если суммы значений ключей будут равны, то второй
хэш считается более приоритетнее)
• ключи со значениями меньше 10 не должны попасть в финальный хэш
• получившийся хэш должен вернуться упорядоченным по значениям
ключей в порядке возрастания.
=end

def connect_hashes(hash1, hash2)
    k1,k2 = hash1.values, hash2.values
   output = {}
   sum1 = sum2 = 0
    k1.each{|x|  sum1 = sum1+x}
    k2.each{|x| sum2 = sum2+x}
    output = (sum1<=sum2)? hash1.merge(hash2) : hash2.merge(hash1)
output.delete_if{ |key,value| value < 10 }.sort_by(&:last).to_h
 end
 
 
 
 p connect_hashes({ a: 2, b: 12 }, { c: 11, e: 5 })  
 p connect_hashes({ a: 13, b: 9, d: 11 }, { c: 12, a: 15 })  
 p connect_hashes({ a: 14, b: 12 }, { c: 11, a: 15 }) 