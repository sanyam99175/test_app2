class Paymethod < ApplicationRecord
    belongs_to :user
    validates :name, presence: true, length: {minimum: 5, maximum: 100}
end
