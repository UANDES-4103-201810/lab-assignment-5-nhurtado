class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      render json: {message: 'Saved.'}
    else
      render json: {message: 'Unable to save.'}
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.delete
      render json: {message: 'Deleted.'}
    else
      render json: {message: 'Unable to delete.'}
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      render json: {message: 'Updated.'}
    else
      render json: {message: 'Unable to update.'}
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def more_tickets_bought
  private

  def user_params
    params.permit(:name, :last_name, :email, :phone, :password, :address)
  end
end
