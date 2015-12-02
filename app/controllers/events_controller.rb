class EventsController < InheritedResources::Base

  private

    def event_params
      params.require(:event).permit(:title, :description, :date, :stock_count, :price, :sell_count)
    end
end

