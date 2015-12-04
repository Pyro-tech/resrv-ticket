class Customer < ActiveRecord::Base
  has_many :reservations

  validates :name, presence: true
  validates :tel, presence: true
  validates :address, presence: true
  validates :email, presence: true
end
