class Employer < ApplicationRecord
  validates :phone,   :presence => {:message => 'hello world, bad operation!'},
                   :numericality => true,
                   :length => { :minimum => 10, :maximum => 15 }
    belongs_to :user

    belongs_to :category

    has_many :employeesparams
end
