class AddOrderToPortfolio < ActiveRecord::Migration[7.0]
  def change
    add_column :portfolio_items, :order, :integer
  end
end
