class Employeesparam < ApplicationRecord
    validates :firstname, presence: true, length: {minimum: 4}

    belongs_to :user
    belongs_to :employer
end
