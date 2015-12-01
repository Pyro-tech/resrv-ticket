class Reservation < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :stock_count, presence: true
  validates :price, presence: true
  validates :sell_count, presence: true
end
