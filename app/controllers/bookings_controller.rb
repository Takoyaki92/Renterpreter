class BookingsController < ApplicationController
  def new
    @translator = Translator.find(params[:translator_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @translator = Translator.find(params[:translator_id])
    @booking = Booking.new(booking_params)
    @booking.translator = @translator
    authorize @booking

    @booking.user = current_user


    if @booking.save
      redirect_to translator_path(@translator)
    else
      render :new
    end
  end

  private

  # I'm not 100% sure about the .permit here. Should :user_id and :translator_id be included?

  def booking_params
    params.require(:booking).permit(:date_time, :status, :description, :user_id, :translator_id)
  end
end
