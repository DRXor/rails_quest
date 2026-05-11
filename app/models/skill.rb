class Skill < ApplicationRecord
  validates :name, presence: true
  validates :power, numericality: { greater_than_or_equal_to: 0 }
end
