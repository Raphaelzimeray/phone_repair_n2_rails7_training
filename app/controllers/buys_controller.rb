class BuysController < ApplicationController


  def index
    @buys = policy_scope(Buy)
  end

  def show
    @buy = Buy.find(params[:id])
    authorize @buy
  end

  def create
    @phone = Phone.find(params[:phone_id])
    @buy = Buy.new
    @buy.phone = @phone
    @buy.user = current_user
    @buy.save
    redirect_to buys_path
    authorize @buy
  end
end
