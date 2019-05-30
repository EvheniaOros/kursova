class Employer < ApplicationRecord
    belongs_to :user

    belongs_to :category
    has_many :employ_comment, dependent: :destroy
end
