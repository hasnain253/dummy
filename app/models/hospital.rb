class Hospital < ApplicationRecord
    has_many :patients, dependent: :destroy
    has_many :physicians, dependent: :destroy
    has_one  :reception
    has_and_belongs_to_many :nurses, dependent: :destroy
    validates :name, presence: true
end

