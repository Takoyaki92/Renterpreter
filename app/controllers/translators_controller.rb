class TranslatorsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @translator = Translator.new
  end

  def create
    @translator = Translator.new(translator_params)
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

  def cocktail_params
    params.require(:translator).permit(:languages, :description, :rates, :availability, :user_id)
  end
end
