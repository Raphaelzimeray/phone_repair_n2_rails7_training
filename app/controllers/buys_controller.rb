class BuysController < ApplicationController


  def index
    @buys = policy_scope(Buy)
  end

  def create
    @phone = Phone.find(params[:phone_id])
    @buy = Buy.new
    @buy.phone = @phone
    @buy.user = current_user
    @buy.save
    redirect_to phones_path
    authorize @buy
  end
end
