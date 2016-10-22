class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :present_id
      t.string :content
      t.timestamps null: false
    end
  end
end