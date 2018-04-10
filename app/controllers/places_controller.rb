class PlacesController < ApplicationController
  def create
    @place = Place.new(place_params)
    if @place.save
      render json: {message: 'Saved.'}
    else
      render json: {message: 'Unable to save.'}
    end
  end

  def destroy
    @place = Place.find(params[:id])
    if @place.delete
      render json: {message: 'Deleted.'}
    else
      render json: {message: 'Unable to delete.'}
    end
  end

  def update
    @place = Place.find(params[:id])
    if @place.update_attributes(place_params)
      render json: {message: 'Updated.'}
    else
      render json: {message: 'Unable to update.'}
    end
  end

  def show
    @place = Place.find(params[:id])
    render json: @place
  end

  private

  def place_params
    params.permit(:name, :address, :capacity)
  end
end
