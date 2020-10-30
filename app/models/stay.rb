class Stay < ApplicationRecord
    belongs_to :user
    belongs_to :host
    belongs_to :destination

end
