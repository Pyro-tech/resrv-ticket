class Event < ActiveRecord::Base
  validates :customer_id, presence: true
  validates :event_id, presence: true
  validates :buy_count, presence: true
  validates :payment, presence: true
end
