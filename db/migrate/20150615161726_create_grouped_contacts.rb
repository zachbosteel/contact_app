class CreateGroupedContacts < ActiveRecord::Migration
  def change
    create_table :grouped_contacts do |t|
      t.integer :contact_id
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
