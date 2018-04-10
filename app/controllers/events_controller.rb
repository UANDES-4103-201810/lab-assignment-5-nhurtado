class EventsController < ApplicationController
  def create
    @event = Event.new(event_params)
    if @event.save
      render json: {message: 'Saved.'}
    else
      render json: {message: 'Unable to save.'}
    end
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.delete
      render json: {message: 'Deleted.'}
    else
      render json: {message: 'Unable to delete.'}
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      render json: {message: 'Updated.'}
    else
      render json: {message: 'Unable to update.'}
    end
  end

  def show
    @event = Event.find(params[:id])
    render json: @event
  end

  private

  def event_params
    params.permit(:name, :description, :start_date, :place)
  end
end
