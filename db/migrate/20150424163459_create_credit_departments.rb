class CreateCreditDepartments < ActiveRecord::Migration
  def change
    create_table :credit_departments do |t|
      t.integer :free_money

      t.timestamps null: false
    end
  end
end
