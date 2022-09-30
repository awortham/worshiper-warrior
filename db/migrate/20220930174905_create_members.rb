class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.boolean :table_lead, default: false
      t.integer :table_id
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
