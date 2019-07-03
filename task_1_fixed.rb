=begin
Разработайте метод palindrome?(string), который будет определять, является ли
строка string палиндром (строкой, которая читается одинаково как с начала так и с
конца), при условии игнорирования пробелов, знаков препинания и регистра.
=end

def palindrome?(string = nil)
  case string
  when String
    string.gsub(/[^A-Za-z0-9]/, "")
          .downcase ==   
    string.gsub(/[^A-Za-z0-9]/, "")
          .downcase
          .reverse
  else
    false
  end
end

p palindrome?("Madam, I'm Adam!")
p palindrome?(1991)
p palindrome?([20,34])
p palindrome?('A man, a plan, a canal -- Panama')
