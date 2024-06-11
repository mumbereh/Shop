class ReportsController < ApplicationController
    def stock_levels
      @items = Item.all
    end
  
    def daily_sales
      @sales = Sale.where('created_at >= ?', Time.zone.now.beginning_of_day)
    end
  
    def weekly_sales
      @sales = Sale.where('created_at >= ?', Time.zone.now.beginning_of_week)
    end
  
    def monthly_sales
      @sales = Sale.where('created_at >= ?', Time.zone.now.beginning_of_month)
    end
  
    def general_report
      @sales = Sale.all
      @items = Item.all
    end
  end
  