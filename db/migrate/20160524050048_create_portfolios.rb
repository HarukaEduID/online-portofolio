class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.date :date
      t.text :description
      t.string :tags

      t.timestamps null: false
    end
  end
end
