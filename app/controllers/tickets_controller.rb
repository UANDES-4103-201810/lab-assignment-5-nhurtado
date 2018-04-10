class TicketsController < ApplicationController
  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      render json: {message: 'Saved.'}
    else
      render json: {message: 'Unable to save.'}
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    if @ticket.delete
      render json: {message: 'Deleted.'}
    else
      render json: {message: 'Unable to delete.'}
    end
  end

  def update
    @ticket = Ticket.find(params[:id])
    if @ticket.update_attributes(ticket_params)
      render json: {message: 'Updated.'}
    else
      render json: {message: 'Unable to update.'}
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
    render json: @ticket
  end

  def most_expensives
    @ticket = Ticket.all().order(:price).limit(1)
    render json: @ticket
  end

  private

  def ticket_params
    params.permit(:description, :price, :event)
  end

end
