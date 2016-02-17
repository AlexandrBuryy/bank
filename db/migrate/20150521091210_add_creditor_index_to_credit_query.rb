class AddCreditorIndexToCreditQuery < ActiveRecord::Migration
  def change
    add_reference :credit_queries, :creditor, index: true, foreign_key: true
  end
end
