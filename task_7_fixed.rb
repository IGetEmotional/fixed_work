=begin
Анаграмма — литературный приём, состоящий в перестановке букв или звуков
определённого слова (или словосочетания), что в результате даёт другое слово
или словосочетание.
Разработайте метод combine_anagrams(words_array), который принимает на вход
массив слов и разбивает их в группы по анаграммам, регистр букв не имеет
значения при определении анаграмм. 
=end

def combine_anagrams(array)
  array.sort_by(&:length)
       .group_by{ |x| x.each_char.sort }
       .values
end

p combine_anagrams(%w[cars for potatoes racs four scar creams scream])
