class AddImageToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :image, :text
  end
end
