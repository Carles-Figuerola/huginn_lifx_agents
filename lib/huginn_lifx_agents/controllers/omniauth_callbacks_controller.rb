class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  define_method "lifx" do
    option_provider = ServiceOptionProviders::LifxOptionProvider.new
    service = current_user.services.initialize_or_update_via_omniauth(request.env['omniauth.auth'], option_provider)
    if service && service.save
      redirect_to services_path, notice: "The service was successfully created."
    else
      redirect_to services_path, error: "Error creating the service."
    end
  end
end
