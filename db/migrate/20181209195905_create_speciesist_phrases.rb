class CreateSpeciesistPhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :speciesist_phrases do |t|
      t.integer :importance_points
      t.text :text

      t.timestamps
    end
  end
end
