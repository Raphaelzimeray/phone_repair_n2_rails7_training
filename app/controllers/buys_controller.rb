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
    redirect_to buy_path(@buy) # avoir l'id du buy comme on fait pour un link_to vers une show dans le html
    authorize @buy
  end
end
