class Customer < ActiveRecord::Base
  validates :name, presence: true
  validates :tel, presence: true
  validates :email, presence: true
end
