# The pages controller deals with the pages on the application which do not fall under the listings controller, such as home, help, my account and the success page once an item has been bought

class PagesController < ApplicationController

  before_action :authenticate_user!, only: [:my_account]

  def home
    @recent_listings = Listing.last(5)
  end

  def help; end

  def my_account
    @user = current_user
    @listings = Listing.where(user: current_user)
  end

  def success
    @year = params[:year]
    @manufacturer = params[:manufacturer]
    @model = params[:model]
  end
end
