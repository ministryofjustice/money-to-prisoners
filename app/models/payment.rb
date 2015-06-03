class Payment < ActiveRecord::Base
  validates :sender_id,        presence: true
  validates :amount_in_pence,  presence: true,  numericality: true
  validates :source,           presence: true
  validates :received_at,      presence: true
  validates :reference,        presence: true

  def amount_in_pounds
    amount_in_pence/100.00
  end
end
