class ApplicationController < ActionController::Base
 protect_from_forgery with: :exception
 layout :layout_by_resource

end


def layout_by_resource
  if devise_controller? && resource_name == :user && action_name == 'sign_in'
    'devise'
  else
    'application'
  end
end