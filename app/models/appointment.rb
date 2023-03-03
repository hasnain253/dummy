class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :physician
    belongs_to :hospital
end
