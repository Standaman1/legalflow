class CreateStageones < ActiveRecord::Migration[5.2]
  def change
    create_table :stageones do |t|
      t.text :title
      t.text :lawyer_signature
      t.text :user_signature
      t.text :user_name
      t.text :lawyer_name

      t.timestamps
    end
  end
end
