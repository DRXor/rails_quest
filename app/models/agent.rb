class Agent < ApplicationRecord
  has_many :missions, dependent: :destroy
  has_many :agent_skills
  has_many :skills, through: :agent_skills

  validates :codename, presence: true, uniqueness: true
  validates :level, numericality: { greater_than: 0, less_than_or_equal_to: 10 }
  validates :active, inclusion: { in: [true, false] }
end
