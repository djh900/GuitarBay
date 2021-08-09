class ListingsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @listings = Listing.all
  end
  
  def new
    prefill_select_menus
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(strong_params)
    if @listing.save
      redirect_to listing_path(@listing)
    else
      prefill_select_menus
      render 'new'
    end
  end

  def show
    begin
      @listing = Listing.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render_404
    end
  end

  def edit; end

  def update; end

  def destroy; end

  private

  def strong_params
    params.require(:listing).permit(:category_id, :manufacturer_id, :model, :condition_id, :price, :color_id, :material_id, :fingerboard_id, :scale_length, :fingerboard_radius, :number_of_frets, :bridge_id, :neck_pickup, :bridge_pickup, :country_id, :year_manufactured, :serial_number, :case_id, :description, :delivery_id)
  end

  def prefill_select_menus
    @categories = Category.all
    @manufacturers = Manufacturer.all
    @conditions = Condition.all
    @colors = Color.all
    @materials = Material.all
    @fingerboards = Fingerboard.all
    @bridges = Bridge.all
    @countries = Country.all
    @cases = Case.all
    @deliveries = Delivery.all
  end

end
