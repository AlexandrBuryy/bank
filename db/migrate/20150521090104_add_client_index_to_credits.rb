class AddClientIndexToCredits < ActiveRecord::Migration
  def change
    add_reference :credits, :client, index: true, foreign_key: true
  end
end
