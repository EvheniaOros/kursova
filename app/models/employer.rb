class Employer < ApplicationRecord
    belongs_to :user
    
    has_one :category
    has_many :employ_comment, dependent: :destroy
end
