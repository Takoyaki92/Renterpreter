class DashboardsController < ApplicationController
  def profile
    @bookings = policy_scope(Booking).order(created_at: :desc)
    # @bookings = Booking.all
  end

  def accept
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "Accepted"
    @booking.save
    redirect_to "/profile"
  end

  def decline
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "Declined"
    @booking.save
    redirect_to "/profile"
  end

  # Make translator_booking and user_booking

end
