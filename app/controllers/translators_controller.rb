class TranslatorsController < ApplicationController
  def index
    @translators = policy_scope(Translator).order(created_at: :desc)
    @translator = Translator.new
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
