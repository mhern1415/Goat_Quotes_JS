class Athlete < ApplicationRecord
    has_many :quotes
    has_many :sports, through: :quotes 
end
