class AddCreditDurationToCreditType < ActiveRecord::Migration
  def change
    add_column :credit_types, :credit_duration, :integer
  end
end
