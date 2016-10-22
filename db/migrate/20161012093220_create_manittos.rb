class CreateManittos < ActiveRecord::Migration
  def change
    create_table :manittos do |t|
      t.string :who
      t.string :name
      t.boolean :love, default: false
      t.timestamps null: false
    end
  end
end
