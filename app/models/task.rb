class Task < ActiveRecord::Base
  validates_presence_of :title
  validate :validate_completed_date

  private

  def validate_completed_date
    if completed.present?
      self.errors.add(:completed, "can't be less than created date") if created_at and completed < created_at.to_date
      self.errors.add(:completed, "can't be in the future") if completed > Date.today
    end
  end

end
