class TranslatorsController < ApplicationController
  def index
  end

  def show
    @translator = Translator.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
