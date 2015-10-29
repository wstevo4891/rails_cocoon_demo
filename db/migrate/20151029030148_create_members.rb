class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :member_name
      t.string :member_id
      t.string :member_id_cache
      t.integer :document_id

      t.timestamps null: false
    end
    
    add_index :members, :document_id
  end
end
