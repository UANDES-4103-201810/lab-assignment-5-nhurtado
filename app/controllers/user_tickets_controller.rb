class UserTicketsController < ApplicationController
  def create
    @u_ticket = UserTicket.new(u_ticket_params)
    if @u_ticket.save
      render json: {message: 'Saved.'}
    else
      render json: {message: 'Unable to save.'}
    end
  end

  def destroy
    @u_ticket = UserTicket.find(params[:id])
    if @u_ticket.delete
      render json: {message: 'Deleted.'}
    else
      render json: {message: 'Unable to delete.'}
    end
  end

  def update
    @u_ticket = UserTicket.find(params[:id])
    if @u_ticket.update_attributes(u_ticket_params)
      render json: {message: 'Updated.'}
    else
      render json: {message: 'Unable to update.'}
    end
  end

  def show
    @u_ticket = UserTicket.find(params[:id])
    render json: @u_ticket
  end

  private

  def u_ticket_params
    params.permit(:user, :ticket, :time, :paid)
  end
end
