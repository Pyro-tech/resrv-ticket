class ListController < ApplicationController
  def index
    @eventlists = Event.order(:date)
  end
end
