class SalesController < ApplicationController
    def new
      @sale = Sale.new
      @sale.sale_items.build
      @items = Item.all
    end
  
    def edit
      @sale = Sale.find(params[:id])
      @items = Item.all
    end
  
    def create
      @sale = Sale.new(sale_params)
      if @sale.save
        redirect_to @sale
      else
        @items = Item.all
        render :new
      end
    end
  
    def update
      @sale = Sale.find(params[:id])
      if @sale.update(sale_params)
        redirect_to @sale
      else
        @items = Item.all
        render :edit
      end
    end
  
    private
  
    def sale_params
      params.require(:sale).permit(sale_items_attributes: [:item_id, :quantity, :price])
    end
  end
  