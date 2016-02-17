class AddClientIndexToDeposits < ActiveRecord::Migration
  def change
    add_reference :deposits, :client, index: true, foreign_key: true
  end
end
