class CreateDocumentsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :documents_users do |t|
      t.integer :document_id
      t.integer :user_id
    end
  end
end
