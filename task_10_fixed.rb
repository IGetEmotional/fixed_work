=begin
Разработайте функцию count_words(string), которая будет возвращать хэш со
статистикой частоты употребления входящих в неё слов. 
=end


def count_words(str)
hash = {}
str = str.downcase!.split(" ").each{|x| x.gsub!(/[^A-Za-z]/,'')}.delete_if{|word| word.empty?}
    until str.empty? do
             check = str[0]
             count = 0
             str.each{|y| count+=1 if y == check}
             stat = {}
             stat.store(check,count)
             hash.merge!(stat)
             str.delete_if{|y| y == check}
             end
hash
end


#puts count_words("A man, a plan, a canal -- Panama")

str = "A man, a plan, a canal -- Panama"
 puts count_words(str)
 str = "Doo bee doo bee doo"
 puts count_words(str)