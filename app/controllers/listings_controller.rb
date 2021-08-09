class ListingsController < ApplicationController

  # Ensure that a user is logged in before they can create/update/destroy any listings
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
    @listing.user_id = current_user.id
    if @listing.save
      flash[:notice] = "New listing created successfully!"
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

  # Function to permit listing attributes through the strong params security feature

  def strong_params
    params.require(:listing).permit(:category_id, :manufacturer_id, :model, :condition_id, :price, :color_id, :material_id, :fingerboard_id, :scale_length, :fingerboard_radius, :number_of_frets, :bridge_id, :neck_pickup, :bridge_pickup, :country_id, :year_manufactured, :serial_number, :case_id, :description, :location, :delivery_id, :image)
  end

  # Function to prefill the select menu options in the new and edit forms

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
