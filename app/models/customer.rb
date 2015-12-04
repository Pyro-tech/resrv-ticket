# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  name       :string
#  tel        :string
#  address    :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Customer < ActiveRecord::Base
  has_many :reservations

  validates :name, presence: true
  validates :tel, presence: true
  validates :address, presence: true
  validates :email, presence: true
end
