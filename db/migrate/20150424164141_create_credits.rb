class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|

      t.datetime :data_begin
      t.integer :sum


      t.timestamps null: false
    end
  end
end
