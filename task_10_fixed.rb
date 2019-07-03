=begin
Разработайте функцию count_words(string), которая будет возвращать хэш со
статистикой частоты употребления входящих в неё слов. 
=end


def count_words(str)
  hash = {}
  str = str.downcase!.split(" ").each{ |x| x.gsub!(/[^A-Za-z]/,'') }
  str.delete_if{ |word| word.empty? }
     .each{ |x| hash[x] = str.count(x) }
  hash
end

str = "A man, a plan, a canal -- Panama"
p count_words(str)
str = "Doo bee doo bee doo"
p count_words(str)
