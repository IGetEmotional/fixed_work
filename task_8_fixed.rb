=begin
Написать метод multiply_numbers(inputs), который вернет произведение цифр,
входящих в inputs.
=end


def multiply_numbers(inputs = nil)
    num = 1
    check = false
    case inputs
    when Float, String, Integer
             inputs = inputs.to_s
             inputs.each_char{|y| next if !('0'..'9').include?(y)
                        check = true
                        num = num*(y.to_i)
                        }  
    when Array
    inputs.each{|x| next if x.class != Integer
        num = num*x
        check = true
         }
    end
num if check
 end
 
 

 
 p multiply_numbers()                            
 p multiply_numbers('ss')  
  p multiply_numbers('1234')                     
 p multiply_numbers('sssdd34')                   
 p multiply_numbers(2.3)                          
p multiply_numbers([5, 6, 10]) 


