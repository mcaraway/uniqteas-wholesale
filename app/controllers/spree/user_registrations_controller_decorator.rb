Spree::UserRegistrationsController.class_eval do
  def new
    redirect_to contact_path
  end
end