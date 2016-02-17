class AddDepositTypeToDeposits < ActiveRecord::Migration
  def change
    add_reference :deposits, :deposit_type, index: true, foreign_key: true
  end
end
