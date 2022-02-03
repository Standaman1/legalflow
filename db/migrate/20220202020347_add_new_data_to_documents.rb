class AddNewDataToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :lawyer_signature, :text
    add_column :documents, :user_signature, :text
    add_column :documents, :user_name, :text
    add_column :documents, :lawyer_name, :text
    add_column :documents, :type_id, :integer
  end
end
