# == Schema Information
#
# Table name: reservations
#
#  id          :integer          not null, primary key
#  customer_id :integer
#  event_id    :integer
#  buy_count   :integer
#  payment     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
