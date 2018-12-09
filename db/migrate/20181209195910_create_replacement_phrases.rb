class CreateReplacementPhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :replacement_phrases do |t|
      t.text :text
      t.integer :upvotes
      t.integer :downvotes
      t.references :speciesist_phrase, foreign_key: true

      t.timestamps
    end
  end
end
