class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    if params[:search]
      puts "\n\n\n\n\n\n\n\n\n\n\n"
      puts params[:search][:date].class
      puts Flight.first.date.class
      puts "\n\n\n\n\n\n\n\n\n\n\n"
      params[:search].reject! {|_k, v| v.empty?}
      @flights = params[:search].empty? ? Flight.all : Flight.where(flight_params)
    end
  end

  private

  def flight_params
    params.require(:search).permit(:arrival_ap_id, :departure_ap_id, :date)
  end

  def search_params
    params.require(:search).permit(:arrival_ap_id, :departure_ap_id, :date, :passenger_count)
  end
end
