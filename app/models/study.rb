class Study < ApplicationRecord
    validates :name,:drug, presence: true
    validates :age_limit, numericality: {only_integer: true , greater_than: 7}
    validates :phase, numericality: {only_integer: true, less_than_or_equal_to: 5,greater_than: 0}
end
