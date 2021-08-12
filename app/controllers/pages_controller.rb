# The pages controller deals with the pages on the application which do not fall under the listings controller, such as home, help, my account and payment related methods

class PagesController < ApplicationController

  # Ensure a user is signed in before they can access the my account or payment success pages
  before_action :authenticate_user!, only: [:my_account, :success]

  # Home page, displaying the mose recent 5 listings

  def home
    @recent_listings = Listing.last(5)
  end

  # Static help page

  def help; end

  # My account page, displaying a user's details and listings

  def my_account
    @user = current_user
    @listings = Listing.where(user: current_user)
  end

  # Successful payment page

  def success
    @year = params[:year]
    @manufacturer = params[:manufacturer]
    @model = params[:model]
    @id = params[:id]
  end

  # Webhook method accessed by stripe when a payment is completed, changing the listings 'sold' attribute to true
  
  def webhook
    payment_id = params[:data][:object][:payment_intent]
    payment = Stripe::PaymentIntent::retrieve(payment_id)
    listing_id = payment.metadata.listing_id
    buyer_id = payment.metadata.user_id
    Listing.find(listing_id).update(sold: true)
  end
end
