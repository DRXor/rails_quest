class Agent < ApplicationRecord
  has_many :missions, dependent: :destroy

  validates :name, presence: true
  validates :level, numericality: { greater_than: 0 }
end
