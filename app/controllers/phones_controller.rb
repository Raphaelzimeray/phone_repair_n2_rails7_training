class PhonesController < ApplicationController

  def index
    @phones = policy_scope(Phone)
  end

  def show
    @phone = Phone.find(params[:id])
    authorize @phone
  end


  def new
    @phone = Phone.new
    authorize @phone
  end

  def create
    @phone = Phone.new(phone_params)
    if @phone.save
      redirect_to phone_path(@phone)
      authorize @phone
    else
      render :new, status: :unprocessable_entity
      authorize @phone
    end
  end

  def edit
    @phone = Phone.find(params[:id])
    authorize @phone
  end

  def update
    @phone = Phone.find(params[:id])
    if @phone.update(phone_params)
      redirect_to phone_path(@phone)
    authorize @phone
    else
      render :edit, status: :unprocessable_entity
      authorize @phone
    end
  end

  def destroy
    @phone = Phone.find(params[:id])
    @phone.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to phones_path, status: :see_other
    authorize @phone
  end

  private

  def phone_params
    params.require(:phone).permit(:brand, :model, :price, :capacity_go, :color, :camera, :description, photos: [])
  end

end
