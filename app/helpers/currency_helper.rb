module CurrencyHelper

   def to_currency(num)
      converted_num = num.to_f/100
      "$#{converted_num}"
   end

end