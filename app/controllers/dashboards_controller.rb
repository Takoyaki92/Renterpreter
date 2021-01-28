class DashboardsController < ApplicationController
  def profile
    @bookings = policy_scope(Booking).order(created_at: :desc)
    # @bookings = Booking.all
  end
end
