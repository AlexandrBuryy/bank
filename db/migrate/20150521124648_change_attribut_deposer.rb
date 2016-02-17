class ChangeAttributDeposer < ActiveRecord::Migration
  change_table :deposit_queries do |t|
    t.rename :depositor_id, :deposer_id
  end
end
