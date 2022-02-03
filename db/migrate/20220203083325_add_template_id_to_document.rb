class AddTemplateIdToDocument < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :template_id, :integer
  end
end
