class ListingsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @listings = Listing.all
  end
  
  
  def new
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

  def create; end

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

end
