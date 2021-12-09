class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = @flight.bookings.build
    @passengers = params[:passengers].to_i.times {@booking.passengers.build}
  end

  def create
    @booking = Booking.new(booking_params)
    @passengers = booking_params[:passengers_attributes].keys.size
    @flight = Flight.find(params[:booking][:flight_id])
    if @booking.save
      redirect_to bookings_path(id: @booking)
    else
      @booking.errors.full_messages.each do |e|
        flash.now[:notice] ? flash[:notice] << e : flash[:notice] = [e]
      end
      render :new
      flash.clear
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
