class AddDefaultImportancePoints < ActiveRecord::Migration[5.2]
  def change
    change_column :speciesist_phrases, :importance_points, :integer, :default => 1
  end
end
