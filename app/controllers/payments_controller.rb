class PaymentsController < ApplicationController
  def success
    @year = params[:year]
    @manufacturer = params[:manufacturer]
    @model = params[:model]
  end
end
