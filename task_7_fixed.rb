=begin
Анаграмма — литературный приём, состоящий в перестановке букв или звуков
определённого слова (или словосочетания), что в результате даёт другое слово
или словосочетание.
Разработайте метод combine_anagrams(words_array), который принимает на вход
массив слов и разбивает их в группы по анаграммам, регистр букв не имеет
значения при определении анаграмм. 
=end


def combine_anagrams(arr)
    arr = arr.sort_by(&:length)
    new_array = []
    new_array.push(arr[0])
    arr.delete_at(0)
    arr.map{|x| if x.length > new_array[-1].length
    new_array.push(x)
    arr.delete(x)
    end
 }
    new_array = new_array.each_slice(1).to_a
    check1, check2 = [],[]
    new_array.each{|x|
    x[0].each_char{|y| check1.push(y)}
    check1.sort!
    arr.each{|z|
    z.each_char{|t| check2.push(t)}
    check2.sort!
    if check1 == check2
    new_array[new_array.index(x)].push(z)
    arr.delete(z)
    end
    check2 = []
    }
    check1 = []
    }
    if arr[0]!=nil
    arr = arr.each_slice(1).to_a
    arr.each{|x| new_array.push(x)}
    end
    new_array
    end


p combine_anagrams(%w[cars for potatoes racs four scar creams scream])