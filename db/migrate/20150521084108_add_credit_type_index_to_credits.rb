class AddCreditTypeIndexToCredits < ActiveRecord::Migration
  def change
    add_reference :credits, :credit_type, index: true, foreign_key: true
  end
end
