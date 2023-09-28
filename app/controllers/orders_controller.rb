class OrdersController < ApplicationController

    def index
      @orders = Order.where(is_completed: nil)
    end

    def update
      order = Order.find(params[:id])
      p '100'*100
      p params[:id]
      if order
        order.update(is_completed: true)
      end

      redirect_to root_path

    end
  
  end