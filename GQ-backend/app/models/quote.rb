class Quote < ApplicationRecord
    belongs_to :athlete, required: false
    belongs_to :sport, required: false
end
