class PhonesController < ApplicationController

  before_action :set_phone, only: [:show, :edit, :update, :destroy]

  def index
    @phones = policy_scope(Phone)
    if params[:query].present?
      sql_subquery = "brand ILIKE :query OR model ILIKE :query"
      @phones = @phones.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
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
    authorize @phone
  end

  def update
    if @phone.update(phone_params)
      redirect_to phone_path(@phone)
    authorize @phone
    else
      render :edit, status: :unprocessable_entity
      authorize @phone
    end
  end

  def destroy
    @phone.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to phones_path, status: :see_other
    authorize @phone
  end

  private

  def phone_params
    params.require(:phone).permit(:brand, :model, :price, :capacity_go, :color, :camera, :description, photos: [])
  end

  def set_phone
    @phone = Phone.find(params[:id])
  end

end
