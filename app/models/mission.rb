class Mission < ApplicationRecord
  belongs_to :agent

  STATUSES = %w[assigned in_progress completed].freeze

  validates :title, presence: true
  validates :status, presence: true

  def status=(value)
    unless STATUSES.include?(value)
      raise ArgumentError, "Invalid status"
    end

    super
  end
end
