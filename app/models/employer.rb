class Employer < ApplicationRecord
    belongs_to :user

    belongs_to :category

    has_many :employeesparams
end
