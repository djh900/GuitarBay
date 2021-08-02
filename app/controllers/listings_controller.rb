class ListingsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @listings = Listing.all
  end
  
  def new; end

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
