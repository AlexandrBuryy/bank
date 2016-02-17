class AddDepositTypeToDepositQuery < ActiveRecord::Migration
  def change
    add_reference :deposit_queries, :deposit_type, index: true, foreign_key: true
  end
end
