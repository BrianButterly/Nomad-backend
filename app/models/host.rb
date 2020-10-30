class Host < ApplicationRecord
    has_many :stays
    has_many :users, through: :stays
    has_many :destinations, through: :stays
end
