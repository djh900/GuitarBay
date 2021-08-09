class PagesController < ApplicationController

  before_action :authenticate_user!, only: [:my_account]

  def home
    @recent_listing = Listing.last
  end

  def help; end

  def my_account; end
end
