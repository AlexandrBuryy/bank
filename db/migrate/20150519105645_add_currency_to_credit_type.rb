class AddCurrencyToCreditType < ActiveRecord::Migration
  def change
    add_reference :credit_types, :currency, index: true, foreign_key: true
  end
end
