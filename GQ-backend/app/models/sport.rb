class Sport < ApplicationRecord
    has_many :quotes
    has_many :athletes, through: :quotes 
end
