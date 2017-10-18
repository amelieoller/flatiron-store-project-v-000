class LineItem < ActiveRecord::Base
   belongs_to :cart
   belongs_to :item

   def total
      self.quantity * self.item.price      
   end
end
