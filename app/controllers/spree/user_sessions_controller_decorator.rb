Spree::UserSessionsController.class_eval do
  before_filter :before_new, :only => :new
  
  def before_new 
    logger.debug("********** setting user_return_to to: " + (params[:user_return_to] || "nil"))
    session[:user_return_to] = params[:user_return_to]
  end 
end