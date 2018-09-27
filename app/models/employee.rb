class Employee < ApplicationRecord
  belongs_to :dog

  def full_name
    "#{self.first_name} '#{self.alias}' #{self.last_name}"
  end
end
