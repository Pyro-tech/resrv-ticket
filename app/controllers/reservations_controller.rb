class ReservationsController < InheritedResources::Base

  private

    def reservation_params
      params.require(:reservation).permit(:customer_id, :event_id, :buy_count, :payment)
    end
end

