class Drink < ApplicationRecord

    belongs_to :order
    validates :base, :flavor, :size, :add_on, presence: true
    validates_inclusion_of :base, :in => ['milk tea', 'green milk tea', 'black tea', 'jasmine green tea']
    validates_inclusion_of :size, :in => ['medium', 'large']
    validates_inclusion_of :flavor, :in => ['none', 'chocolate', 'coffee', 'honey', 'mango', 'peach', 'passion fruit']
    validates_inclusion_of :add_on, :in => ['none', 'honey boba', 'aloe', 'mango jelly']

end
