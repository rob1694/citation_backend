class Citation < ApplicationRecord
  belongs_to :offender
  belongs_to :enforcer
  
  validates :offender_id, presence: true
  validates :enforcer_id, presence: true
  validates :violation, presence: true
  validates :amount, presence: true
  validates :due_date, presence: true
  
end
