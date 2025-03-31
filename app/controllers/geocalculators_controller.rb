class GeocalculatorsController < ApplicationController
  # GET /geocalculators or /geocalculators.json
  def new
  end


  # POST /geocalculators or /geocalculators.json
  def create
    @distance = Geocoder::Calculations.distance_between(params[:origin], params[:destination])
    render :new, status: :unprocessable_entity
  end

  private
end
