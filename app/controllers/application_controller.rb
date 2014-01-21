class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  after_filter :store_location

  def store_location
    # store last url as long as it isn't a /users path
    session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/ || request.fullpath =~ /\/search_suggestions/
   end

   def after_sign_out_path_for(resource)
    session[:previous_url] || root_path
   end

   def after_sign_in_path_for(resource)
    if current_user.try(:admin?)
      admin_path
    else
      session[:previous_url] || root_path
    end
   end

end
