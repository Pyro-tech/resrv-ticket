class Reservation < ActiveRecord::Base
  PAYMENT_TYPES = [ "現金", "銀行振込", "クレジットカード" ]

  belongs_to :customer
  belongs_to :event

  validates :customer_id, presence: true
  validates :event_id, presence: true
  validates :buy_count, presence: true
  validates :payment, inclusion: PAYMENT_TYPES
end
