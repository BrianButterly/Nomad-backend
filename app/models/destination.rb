class Destination < ApplicationRecord
    has_many :stays
    has_many :hosts, through: :stays
    has_many :users, through: :stays
end
