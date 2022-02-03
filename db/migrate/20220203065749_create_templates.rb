class CreateTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :templates do |t|
      t.text :title
      t.text :description
      t.integer :topic_id
      t.text :image
      t.text :lawyer_signature
      t.text :user_signature
      t.text :user_name
      t.text :lawyer_name
      t.integer :type_id

      t.timestamps
    end
  end
end
