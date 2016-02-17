class CreateCreditQueries < ActiveRecord::Migration
  def change
    create_table :credit_queries do |t|
      t.integer :sum
      t.references :credit_type, foreign_key: true
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
