class CreateExchangeDepartments < ActiveRecord::Migration
  def change
    create_table :exchange_departments do |t|
      t.integer :dollars
      t.integer :euro
      t.integer :bel_rub
      t.integer :rus_rub

      t.timestamps null: false
    end
  end
end
