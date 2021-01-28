class DashboardsController < ApplicationController
  def profile
    find_booking
  end

  private

  def set_user
    @user = current_user
  end

  def booking_params
    params.require(:booking).permit(:date_time, :status, :description, :user_id, :translator_id)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
