class SpeciesistPhrasesController < ApplicationController
  before_action :set_speciesist_phrase, only: [:show, :update, :destroy]

  # GET /speciesist_phrases
  def index
    @speciesist_phrases = SpeciesistPhrase.all

    render json: @speciesist_phrases
  end

  # GET /speciesist_phrases/1
  def show
    render json: @speciesist_phrase
  end

  # POST /speciesist_phrases
  def create
    @speciesist_phrase = SpeciesistPhrase.new(speciesist_phrase_params)

    if @speciesist_phrase.save
      render json: @speciesist_phrase, status: :created, location: @speciesist_phrase
    else
      render json: @speciesist_phrase.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /speciesist_phrases/1
  def update
    if @speciesist_phrase.update(speciesist_phrase_params)
      render json: @speciesist_phrase
    else
      render json: @speciesist_phrase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /speciesist_phrases/1
  def destroy
    @speciesist_phrase.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speciesist_phrase
      @speciesist_phrase = SpeciesistPhrase.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def speciesist_phrase_params
      params.require(:speciesist_phrase).permit(:importance_points, :text)
    end
end
