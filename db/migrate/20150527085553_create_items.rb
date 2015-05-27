class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.date :due_date
      t.integer :priority

      t.timestamps null: false
    end
  end
end
