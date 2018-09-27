class Employee < ApplicationRecord
  # No one at Dunder Mifflin can have the same alias and/or job title (Dwight made up that rule!)
  validate :unique_alias_exceptions
  validates :title, uniqueness: true
  belongs_to :dog

  def full_name
    "#{self.first_name} '#{self.alias}' #{self.last_name}"
  end

  private
  def unique_alias_exceptions
    if self.alias != "none" && Employee.find_by(alias: self.alias)
      self.errors.add(:alias, "must be unique or 'none'")
    end
  end
end
