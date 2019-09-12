module Luhn
  def self.is_valid?(number)
    number = number.to_s.chars.map(&:to_i).reverse
    number.map!.with_index do |num, i|
      if i % 2 !=0
         num *= 2
         num -= 9 if num >=10
        end  
     num
    end
    puts number.reduce(:+)
    return true ? number.reduce(:+) % 10 == 0 : false
end
end


