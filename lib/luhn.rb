module Luhn
  def self.is_valid?(number)
    #WRITE YOUR SOLUTION HERE
    numarr = []
    num = number
    while num > 0 do
      numarr.push(num % 10)
      num = num / 10     
    end
    i = 0
    numarr.each do
      if i % 2 != 0
        numarr[i] *= 2
        if numarr[i] >= 10
          numarr[i] -= 9
        end
      end
      i += 1
    end
    total = 0
    i = 0
    numarr.each do |num|
      total += num
    end
    if total % 10 == 0
      return true
    else
      return false
    end
  end
end
