class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    if params[:search]
      if params[:search][:passenger_count].empty?
        flash.now.alert = "Select passengers"
        render :index
      end
      params[:search].reject! {|_k, v| v.empty?}
      @flights = params[:search].empty? ? Flight.all : Flight.where(flight_params)
    end
  end

  private

  def flight_params
    params.require(:search).permit(:arrival_ap_id, :departure_ap_id, :date)
  end

  def search_params
    params.permit(:arrival_ap_id, :departure_ap_id, :date, :passenger_count)
  end
end
