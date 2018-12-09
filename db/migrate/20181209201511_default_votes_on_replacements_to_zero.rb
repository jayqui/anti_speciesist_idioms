class DefaultVotesOnReplacementsToZero < ActiveRecord::Migration[5.2]
  def change
    change_column :replacement_phrases, :upvotes, :integer, :default => 0
    change_column :replacement_phrases, :downvotes, :integer, :default => 0
  end
end
