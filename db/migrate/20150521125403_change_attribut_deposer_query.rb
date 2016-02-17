class ChangeAttributDeposerQuery < ActiveRecord::Migration
  def change
    change_table :deposit_queries do |t|
      t.remove :credit_type_id
    end
  end
end
