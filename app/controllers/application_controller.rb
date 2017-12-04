class ApplicationController < ActionController::Base
  
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protect_from_forgery with: :exception

  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller? && resource_name == :admin
      "backoffice_devise"
    else
      "application"
    end
  end

  def user_not_authorized
    flash[:alert] = "Você nãp possui autorização de uso. Por favor contate o ADM do sistema."
    redirect_to(request.referrer || root_path)
  end
end
