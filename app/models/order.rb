class Order < ApplicationRecord

    has_many :drinks
    validates :date, presence: true
end
