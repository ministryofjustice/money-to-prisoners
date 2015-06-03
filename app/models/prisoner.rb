class Prisoner < ActiveRecord::Base
  validates :prisoner_number,  presence: true,  uniqueness: true, format: /[A-Z][0-9]{4}[A-Z]{2}/
  validates :prisoner_name,    presence: true,  uniqueness: { scope: :prisoner_number }
  validates :prisoner_dob,     presence: true
end
