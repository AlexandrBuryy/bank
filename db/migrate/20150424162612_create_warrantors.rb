class CreateWarrantors < ActiveRecord::Migration
  def change
    create_table :warrantors do |t|
      t.integer :money

      t.timestamps null: false
    end
  end
end
