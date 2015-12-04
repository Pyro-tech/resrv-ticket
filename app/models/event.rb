# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  date        :datetime
#  stock_count :integer
#  price       :integer
#  sell_count  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ActiveRecord::Base
  has_many :reservations

  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :stock_count, presence: true
  validates :price, presence: true
  validates :sell_count, presence: true
end
