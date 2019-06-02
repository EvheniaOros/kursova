class Employeesparam < ApplicationRecord
    validates :firstname, presence: true, length: {minimum: 4}
    validates :phonenumber,   :presence => {:message => 'hello world, bad operation!'},
                     :numericality => true,
                     :length => { :minimum => 10, :maximum => 15 }
    belongs_to :user
    belongs_to :employer
end
