class Patient < ApplicationRecord
    belongs_to :hospital
    has_many :appointments, dependent: :destroy
    has_many :physicians, through: :appointments
    has_one :reception, through: :hospital
end

