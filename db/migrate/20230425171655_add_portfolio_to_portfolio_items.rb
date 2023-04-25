class AddPortfolioToPortfolioItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :portfolio_items, :portfolio, null: false, foreign_key: true
  end
end
