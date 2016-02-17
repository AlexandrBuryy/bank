class CreateExchangeValues < ActiveRecord::Migration
  def change
    create_table :exchange_values do |t|
      t.string :name
      t.integer :value

      t.timestamps null: false
    end
  end
end
