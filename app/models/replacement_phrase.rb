class ReplacementPhrase < ApplicationRecord
  validates :text, presence: true

  belongs_to :speciesist_phrase
end
