class EventsController < InheritedResources::Base

  def show
    @event = Event.find(params[:id])
  end

  private

    def event_params
      params.require(:event).permit(:title, :description, :date, :stock_count, :price, :sell_count)
    end
end

