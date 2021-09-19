class Enforcer < ApplicationRecord
    has_many :offenders, through: :citations
    has_many :citations

    validates :name, presence: true
    validates :badge_number, presence: true, length: { only_integer:true, in: 5..6 } 
end
