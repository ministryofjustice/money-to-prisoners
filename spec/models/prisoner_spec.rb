require 'rails_helper'

RSpec.describe Prisoner, type: :model do
  it { should validate_presence_of(:prisoner_name) }
  it { should validate_presence_of(:prisoner_number) }
  it { should validate_presence_of(:prisoner_dob) }
  it { should validate_uniqueness_of(:prisoner_number) }
  it { should validate_uniqueness_of(:prisoner_name).scoped_to(:prisoner_number) }
end
