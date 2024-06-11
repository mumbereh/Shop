Rails.application.routes.draw do
  resources :items
  resources :sales

  get 'reports/stock_levels', to: 'reports#stock_levels', as: 'stock_levels_report'
  get 'reports/daily_sales', to: 'reports#daily_sales', as: 'daily_sales_report'
  get 'reports/weekly_sales', to: 'reports#weekly_sales', as: 'weekly_sales_report'
  get 'reports/monthly_sales', to: 'reports#monthly_sales', as: 'monthly_sales_report'
  get 'reports/general_report', to: 'reports#general_report', as: 'general_report'

  root 'items#index'
end
