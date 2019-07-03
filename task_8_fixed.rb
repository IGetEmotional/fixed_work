=begin
Написать метод multiply_numbers(inputs), который вернет произведение цифр,
входящих в inputs.
=end

def multiply_numbers(input = nil)
  num = input.to_s
             .gsub(/\D/,"")
  if !num.empty? 
    value = 1
    num.to_i
       .digits   
       .each{ |x| value*=x}
    value
  end   
end
  
p multiply_numbers()                            
p multiply_numbers('ss')  
p multiply_numbers('1234')                     
p multiply_numbers('sssdd34')                   
p multiply_numbers(2.3)                          
p multiply_numbers([5, 6, 10]) 


