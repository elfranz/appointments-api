class Appointment < ApplicationRecord
    validates :name, :date, presence: true
end
