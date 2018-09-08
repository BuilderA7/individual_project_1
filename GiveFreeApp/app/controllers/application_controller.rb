class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def logged_in

   if current_user == nil
    @logged_in = false
   end
  end
end
