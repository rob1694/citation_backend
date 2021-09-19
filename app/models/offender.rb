class Offender < ApplicationRecord
    has_many :enforcers, through: :citations
    has_many :citations

    validates :name, presence: true
end
