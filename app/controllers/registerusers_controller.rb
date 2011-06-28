class RegisterusersController < Devise::RegistrationsController
     protected

  def after_sign_up_path_for(resource)
#   customer_path
    restaurants_path

  end
end
