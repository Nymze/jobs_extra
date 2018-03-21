class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address, :city, :phone])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :address, :city, :phone])

  end



   def after_sign_in_path_for(devise_for)
  if devise_for.is_a?(User)
     extra_user_dashboard_path
  elsif devise_for.is_a?(Userpro)
     pro_userpro_dashboard_path
  else 
    root_path
  end
end

end
