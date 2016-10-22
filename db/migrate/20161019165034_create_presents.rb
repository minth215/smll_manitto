class CreatePresents < ActiveRecord::Migration
  def change
    create_table :presents do |t|
      t.integer :manitto_id
      t.timestamps null: false
    end
  end
end
