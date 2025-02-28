class StatusChange < Activity
  validates :old_status, :new_status, presence: true
  validate :status_changed

  private

  def status_changed
    errors.add(:new_status, "can't be the same as old status") if new_status == old_status
  end
end