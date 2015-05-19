class CreateCreditTypes < ActiveRecord::Migration
  def change
    create_table :credit_types do |t|
      t.string :kind
      t.integer :percent
      t.integer :max_sum

      t.timestamps null: false
    end
  end
end
