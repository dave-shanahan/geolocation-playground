class GeocalculatorsController < ApplicationController
  # GET /geocalculators or /geocalculators.json
  def new
  end


  # POST /geocalculators or /geocalculators.json
  def create
    @distance = geocode_calculation
    render :new, status: :unprocessable_entity
  end

  private

  def geocode_calculation
    Geocoder::Calculations.distance_between(params[:origin], params[:destination])
  end
end
