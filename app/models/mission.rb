class Mission < ApplicationRecord
  belongs_to :agent

  validates :title, presence: true
  validates :difficulty, numericality: { greater_than: 0 }
end
