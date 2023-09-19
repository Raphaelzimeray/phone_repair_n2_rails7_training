class PhonesController < ApplicationController

  def index
    @phones = Phone.all
  end

  def show
    @phone = Phone.find(params[:id])
  end


  def new
    @phone = Phone.new
  end

  def create
    @phone = Phone.new(phone_params)
    @phone.save
    redirect_to phone_path(@phone)
  end
  
  private

  def phone_params
    params.require(:phone).permit(:brand, :model, :price, :capacity_go, :color, :camera, :description, photos: [])
  end

end
