class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout "layoutvideo"


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:last_name,:document,:address,:email,:document,:phone,:role, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name,:last_name,:document,:address,:email,:document,:phone,:role, :password, :password_confirmation])
    #devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone, :email, bank_attributes: [:bank_name, :bank_account]])
  end

  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      if resource.has_role? :MasterAdmin
        rails_admin_path
      elsif resource.has_role? :Admin
        #posiblemente a asiganar rutas o a visualizar flota
        #_path
        menu_path
      elsif resource.has_role? :RegularUser
        menu_path
      else
        root_path
      end
    else resource.is_a?(Vehicle)
      root_path
    end
  end
end
