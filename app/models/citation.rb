class Citation < ApplicationRecord
  belongs_to :offender
  belongs_to :enforcer
end
