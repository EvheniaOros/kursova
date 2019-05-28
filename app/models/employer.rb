class Employer < ApplicationRecord
    belongs_to :user
    
    has_one :caregory
    has_many :employ_comment, dependent: :destroy
end
