class Enforcer < ApplicationRecord
    has_many :offenders, through: :citations
    has_many :citations
end
