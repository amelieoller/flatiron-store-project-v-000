class CartsController < ApplicationController

   def show
   end

   def checkout
      cart = Cart.find(params[:id])
      cart.checkout
      cart.user.remove_current_cart
      redirect_to cart_path(cart), {notice: 'You have successfully checked out!'}
   end

end
