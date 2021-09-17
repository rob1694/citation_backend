class Offender < ApplicationRecord
    has_many :citations
    has_many :enforcers, through: :citations
end
