class TranslatorsController < ApplicationController
  def index
    @translators = policy_scope(Translator).order(created_at: :desc)

      @markers = @translators.geocoded.map do |translator|
      {
        lat: translator.latitude,
        lng: translator.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { translator: translator })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end

  def show
    @translator = Translator.find(params[:id])
    authorize @translator
  end

  def new
    @translator = Translator.new
    authorize @translator
  end

  def create
    @translator = Translator.new(translator_params)
    authorize @translator
    @translator.user = current_user
    if @translator.save
      redirect_to @translator
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end

  private

  def translator_params
    params.require(:translator).permit(:languages, :description, :rates, :availability, :user_id)
  end
end
