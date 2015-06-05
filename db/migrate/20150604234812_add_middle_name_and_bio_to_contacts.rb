class AddMiddleNameAndBioToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :middle_name, :string
    add_column :contacts, :biography, :text
  end
end
