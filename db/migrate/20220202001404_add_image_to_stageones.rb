class AddImageToStageones < ActiveRecord::Migration[5.2]
  def change
    add_column :stageones, :image, :text
  end
end
