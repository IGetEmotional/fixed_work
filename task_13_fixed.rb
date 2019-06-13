=begin
Адаптируйте ваше решение из Упражнения 1 так, чтобы вместо palindrome?("foo")
вы могли его использовать как "foo".palindrome? # => false.
=end

class String
  def palindrome?
  self.downcase.scan(/\w/) == self.downcase.scan(/\w/).reverse
  end
end

class NilClass
      def palindrome?
        false
      end
  end
  
  class Integer
      def palindrome?
          self.to_s == self.digits*''
      end
  end

    


p "Madam, I'm Adam!".palindrome?

p "A man, a plan, a canal -- Panama".palindrome?

p nil.palindrome?

puts 1771.palindrome?
