class Mission < ApplicationRecord
  belongs_to :agent

  STATUSES = %w[assigned in_progress completed].freeze

  validates :title, presence: true
  validates :status, presence: true

  def status=(value)
    return super(nil) if value.blank?
    raise ArgumentError unless STATUSES.include?(value)

    super(value)
  end
end
