class Employer < ApplicationRecord
    belongs_to :user
    
    has_one :caregory
end
