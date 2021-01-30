class DashboardsController < ApplicationController
  def profile
    @bookings = policy_scope(Booking).order(created_at: :desc)
    # @bookings = Booking.all
  end

  # Make translator_booking and user_booking

end
