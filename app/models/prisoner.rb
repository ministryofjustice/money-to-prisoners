class Prisoner < ActiveRecord::Base
  validates :prisoner_number,  presence: true,  uniqueness: true
  validates :prisoner_name,    presence: true,  uniqueness: { scope: :prisoner_number }
  validates :prisoner_dob,     presence: true
end
