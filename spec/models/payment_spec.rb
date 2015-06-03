require 'rails_helper'

RSpec.describe Payment, type: :model do
  it { should validate_presence_of(:sender_id) }
  it { should validate_presence_of(:amount_in_pence) }
  it { should validate_numericality_of(:amount_in_pence) }
  it { should validate_presence_of(:source) }
  it { should validate_presence_of(:received_at) }
  it { should validate_presence_of(:reference) }

  describe 'shows amount in pounds' do
    subject { build(:payment, amount_in_pence: 1000) }
    it { expect(subject.amount_in_pounds).to eq(10.00) }
  end
end
