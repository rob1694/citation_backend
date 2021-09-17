class Enforcer < ApplicationRecord
    has_many :citations
    has_many :offenders, through: :citations
end
