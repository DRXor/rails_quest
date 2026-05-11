class Skill < ApplicationRecord
  has_many :agent_skills
  has_many :agents, through: :agent_skills

  validates :name, presence: true
  validates :power, numericality: { greater_than_or_equal_to: 0 }

  validates :category, presence: true
end
