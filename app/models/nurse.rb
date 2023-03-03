class Nurse < ApplicationRecord
    has_and_belongs_to_many :hospitals,dependent: :destroy
end
