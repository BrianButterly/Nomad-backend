class User < ApplicationRecord
    has_many :stays
    has_many :hosts, through: :stays
    has_many :destinations, through: :stays
    has_many :reviews
    has_secure_password
end
