class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # These two methods help the application redirect to the 404 page when the listing ID in params doesn't exist in the database
  # Code used: https://gist.github.com/AhmedNadar/b450fd65eda9c4afb8e04e28f1348af6

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  rescue
    render_404
  end

  def render_404
    render file: "#{Rails.root}/public/404.html", status: :not_found
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username])
  end
end
