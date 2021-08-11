# The pages controller deals with the pages on the application which do not fall under the listings controller, such as home, help, my account and payment related methods

class PagesController < ApplicationController

  before_action :authenticate_user!, only: [:my_account, :success]

  skip_before_action :verify_authenticity_token, only: [:webhook]

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
    @id = params[:id]
  end

  def webhook
    payment_id = params[:data][:object][:payment_intent]
    payment = Stripe::PaymentIntent::retrieve(payment_id)
    pp payment
    listing_id = payment.metadata.listing_id
    buyer_id = payment.metadata.user_id
    Listing.find(listing_id).update(sold: true)
  end
end
