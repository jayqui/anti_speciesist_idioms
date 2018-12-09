class ReplacementPhrasesController < ApplicationController
  before_action :set_replacement_phrase, only: [:show, :update, :destroy]

  # GET /replacement_phrases
  def index
    @replacement_phrases = ReplacementPhrase.all

    render json: @replacement_phrases
  end

  # GET /replacement_phrases/1
  def show
    render json: @replacement_phrase
  end

  # POST /replacement_phrases
  def create
    @replacement_phrase = ReplacementPhrase.new(replacement_phrase_params)

    if @replacement_phrase.save
      render json: @replacement_phrase, status: :created, location: @replacement_phrase
    else
      render json: @replacement_phrase.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /replacement_phrases/1
  def update
    if @replacement_phrase.update(replacement_phrase_params)
      render json: @replacement_phrase
    else
      render json: @replacement_phrase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /replacement_phrases/1
  def destroy
    @replacement_phrase.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_replacement_phrase
      @replacement_phrase = ReplacementPhrase.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def replacement_phrase_params
      params.require(:replacement_phrase).permit(:text, :upvotes, :downvotes, :speciesist_phrase_id)
    end
end
