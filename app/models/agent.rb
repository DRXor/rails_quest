class Agent < ApplicationRecord
  has_many :missions, dependent: :destroy

  has_many :agent_skills
  has_many :skills, through: :agent_skills

  validates :name, presence: true
  validates :level, numericality: { greater_than: 0 }

  validates :codename, presence: true
  validates :active, inclusion: { in: [true, false] }
end
